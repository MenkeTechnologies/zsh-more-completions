#!/usr/bin/env python3
"""Harvest zsh completions from crates.io crates that depend on clap_complete.

Pipeline per crate:
    1. Enumerate via crates.io reverse_dependencies (clap_complete_command + clap_complete).
    2. Pre-filter: must have bin_names, not yanked, not already in more_src/ or blacklist.
    3. cargo-binstall to throwaway install-path (no source-build fallback).
    4. For each produced binary, probe a ladder of `completion zsh`-style subcommands.
    5. Validate captured stdout with `zsh -nf`; install into more_src/_<stem>.
    6. Cleanup install dir.
    7. After loop: merge blacklist.txt and tests/t-more-src-existence.zsh.

Env vars:
    HARVEST_TARGET=50              stop after N new completions
    CRATES_WORKERS=8               concurrent install+probe jobs
    CRATES_INSTALL_TIMEOUT=120     binstall hard timeout per crate (s)
    CRATES_PROBE_TIMEOUT=5         each probe invocation timeout (s)
    CRATES_CACHE=/tmp/crates-cli-cache.json   enumeration cache (re-runs skip API)
    CRATES_FORCE_REFRESH=1         bypass cache
    CRATES_MAX_CANDIDATES=3000     hard cap on candidates to try
    GITHUB_TOKEN                   passed through to cargo-binstall for higher API limits
"""
from __future__ import annotations

import json
import os
import pathlib
import re
import shlex
import shutil
import subprocess
import sys
import tempfile
import time
import urllib.error
import urllib.parse
import urllib.request
from concurrent.futures import ThreadPoolExecutor, as_completed

REPO = pathlib.Path(os.environ.get("REPO", pathlib.Path(__file__).resolve().parents[1]))
MORE = REPO / "more_src"
BLPATH = REPO / "blacklist.txt"
TESTPATH = REPO / "tests/t-more-src-existence.zsh"
CACHE = pathlib.Path(os.environ.get("CRATES_CACHE", "/tmp/crates-cli-cache.json"))

UA = "MenkeTechnologies-zsh-more-completions-harvest/1.0 (linux.dev25@gmail.com)"
BINSTALL = pathlib.Path("~/.cargo/bin/cargo-binstall").expanduser()

PROBE_ARGS: list[list[str]] = [
    ["completion", "zsh"],
    ["completions", "zsh"],
    ["completion", "--shell", "zsh"],
    ["completions", "--shell", "zsh"],
    ["completion", "generate", "--shell=zsh"],
    ["completion", "generate", "zsh"],
    ["completions", "generate", "zsh"],
    ["--generate-completion", "zsh"],
    ["--generate-completions", "zsh"],
    ["--completion-script-zsh"],
    ["gen-completions", "zsh"],
    ["generate-completion", "zsh"],
    ["generate-completions", "zsh"],
    ["completion", "shell", "zsh"],
    ["shell-completion", "zsh"],
    ["shell-completions", "zsh"],
]

JUNK_COMPDEF_STEMS = frozenset({
    "foo", "bar", "baz", "qux", "HEAD",
    "myapp", "mysimpleapp", "nometa",
    "conf", "hellos", "rep", "sysc", "usepkg",
})

CRATE_DENYLIST: set[str] = set()


def http_json(url: str, retries: int = 3, pace: float = 1.0) -> dict | None:
    headers = {"User-Agent": UA, "Accept": "application/json"}
    for attempt in range(retries):
        try:
            req = urllib.request.Request(url, headers=headers)
            with urllib.request.urlopen(req, timeout=30) as r:
                data = json.loads(r.read().decode())
            time.sleep(pace)
            return data
        except (urllib.error.HTTPError, urllib.error.URLError, TimeoutError, json.JSONDecodeError):
            time.sleep(1.5 * (attempt + 1))
            continue
    return None


def enumerate_reverse_deps(target_crate: str, max_pages: int = 100) -> list[dict]:
    """Return list of {'name','version','bin_names','repository','yanked'} entries."""
    out: list[dict] = []
    seen: set[str] = set()
    for page in range(1, max_pages + 1):
        url = (
            f"https://crates.io/api/v1/crates/{target_crate}/reverse_dependencies"
            f"?per_page=100&page={page}"
        )
        data = http_json(url)
        if not data:
            break
        versions = data.get("versions") or []
        if not versions:
            break
        for v in versions:
            name = v.get("crate") or ""
            if not name or name in seen:
                continue
            seen.add(name)
            out.append({
                "name": name,
                "version": v.get("num") or "",
                "bin_names": v.get("bin_names") or [],
                "repository": v.get("repository") or "",
                "yanked": bool(v.get("yanked")),
            })
        if len(versions) < 100:
            break
    return out


def load_candidates(force_refresh: bool = False) -> list[dict]:
    if CACHE.is_file() and not force_refresh:
        try:
            return json.loads(CACHE.read_text())
        except (json.JSONDecodeError, OSError):
            pass
    print("# enumerating clap_complete_command reverse deps...", file=sys.stderr, flush=True)
    a = enumerate_reverse_deps("clap_complete_command")
    print(f"#   clap_complete_command: {len(a)}", file=sys.stderr, flush=True)
    print("# enumerating clap_complete reverse deps...", file=sys.stderr, flush=True)
    b = enumerate_reverse_deps("clap_complete")
    print(f"#   clap_complete:         {len(b)}", file=sys.stderr, flush=True)
    by_name: dict[str, dict] = {}
    for entry in a + b:
        if entry["yanked"]:
            continue
        if not entry["bin_names"]:
            continue
        by_name.setdefault(entry["name"], entry)
    cands = list(by_name.values())
    try:
        CACHE.write_text(json.dumps(cands, indent=2))
    except OSError:
        pass
    return cands


# ---------------- compdef parsing ----------------------------------------------

def stems_from_compdef_line(line: str) -> list[str]:
    line = line.strip()
    if not line.startswith("#compdef"):
        return []
    frag = line[len("#compdef"):].strip()
    if not frag:
        return []
    try:
        toks = shlex.split(frag)
    except ValueError:
        return []
    out: list[str] = []
    for t in toks:
        if t.startswith("-"):
            continue
        if "=" in t:
            lhs, rhs = t.split("=", 1)
            if lhs:
                out.append(lhs)
            if rhs and rhs != lhs:
                out.append(rhs)
        else:
            out.append(t)
    return out


def stems_from_body(body: str) -> list[str]:
    m = re.search(r"^#compdef\b.*$", body, re.M)
    if not m:
        return []
    return stems_from_compdef_line(m.group(0))


def dest_name(stems: list[str]) -> str | None:
    if not stems:
        return None
    s0 = stems[0]
    # Reject anything that looks like a filesystem path (some crates emit
    # `#compdef /var/folders/.../bin/foo` via env::current_exe() instead of
    # a clean command name).
    if "/" in s0 or "\\" in s0:
        return None
    if not s0 or not re.fullmatch(r"[A-Za-z0-9_.-]+", s0):
        return None
    if len(s0) > 40:
        return None
    return f"_{s0}"


def zsh_nf(path: pathlib.Path) -> bool:
    try:
        r = subprocess.run(
            ["zsh", "-nf", str(path)],
            capture_output=True,
            text=True,
            timeout=15,
        )
        return r.returncode == 0
    except subprocess.TimeoutExpired:
        return False


# ---------------- per-crate worker ----------------------------------------------

def probe_binary(
    binary: pathlib.Path,
    probe_timeout: float,
    probe_home: pathlib.Path,
    probe_cwd: pathlib.Path,
) -> tuple[str, list[str]] | None:
    """Try each PROBE_ARGS combo. Return (stdout, args_used) on first hit with #compdef.

    Runs with cwd=probe_cwd so any filesystem side effects (some manpage/completion
    generators treat the first arg as an output directory) land in a throwaway dir
    instead of the parent's working directory.
    """
    env = {
        "HOME": str(probe_home),
        "PATH": "/usr/bin:/bin:/usr/sbin:/sbin",
        "LANG": "C",
        "LC_ALL": "C",
        "TERM": "dumb",
        "NO_COLOR": "1",
    }
    for args in PROBE_ARGS:
        try:
            r = subprocess.run(
                [str(binary), *args],
                capture_output=True,
                text=True,
                timeout=probe_timeout,
                env=env,
                stdin=subprocess.DEVNULL,
                cwd=str(probe_cwd),
            )
        except (subprocess.TimeoutExpired, OSError):
            continue
        if r.returncode != 0:
            continue
        if "#compdef" in r.stdout:
            return r.stdout, args
    return None


def binstall_crate(crate: str, install_path: pathlib.Path, timeout: float) -> bool:
    cmd = [
        str(BINSTALL),
        "--no-confirm",
        "--no-symlinks",
        "--disable-strategies", "compile",
        "--install-path", str(install_path),
        crate,
    ]
    try:
        r = subprocess.run(
            cmd,
            capture_output=True,
            text=True,
            timeout=timeout,
        )
    except (subprocess.TimeoutExpired, OSError):
        return False
    if r.returncode != 0:
        return False
    if not install_path.is_dir():
        return False
    return any(install_path.iterdir())


def harvest_one(
    entry: dict,
    install_timeout: float,
    probe_timeout: float,
    tmproot: pathlib.Path,
) -> dict | None:
    crate = entry["name"]
    if crate in CRATE_DENYLIST:
        return None
    workdir = tmproot / re.sub(r"[^A-Za-z0-9_.-]", "_", crate)
    workdir.mkdir(parents=True, exist_ok=True)
    probe_home = workdir / ".home"
    probe_home.mkdir(parents=True, exist_ok=True)
    probe_cwd = workdir / ".cwd"
    probe_cwd.mkdir(parents=True, exist_ok=True)
    install_path = workdir / "bin"
    try:
        if not binstall_crate(crate, install_path, install_timeout):
            return None
        captures: list[dict] = []
        for binary in sorted(install_path.iterdir()):
            if not binary.is_file():
                continue
            try:
                st = binary.stat()
            except OSError:
                continue
            if not (st.st_mode & 0o111):
                continue
            res = probe_binary(binary, probe_timeout, probe_home, probe_cwd)
            if not res:
                continue
            body, used_args = res
            captures.append({
                "binary_name": binary.name,
                "body": body,
                "probe_args": used_args,
            })
        if not captures:
            return None
        return {
            "crate": crate,
            "version": entry["version"],
            "repository": entry["repository"],
            "captures": captures,
        }
    finally:
        shutil.rmtree(workdir, ignore_errors=True)


# ---------------- install / merge ------------------------------------------------

def write_completion(
    dest: str,
    body: str,
    crate: str,
    version: str,
    repository: str,
    probe_args: list[str],
) -> None:
    out = MORE / dest
    header = (
        f"# Source: cargo binstall {crate}@{version}\n"
        f"# Probed via: {' '.join(probe_args)}\n"
        f"# Repository: {repository or 'https://crates.io/crates/' + crate}\n"
    )
    out.write_text(header + body.lstrip("﻿"), encoding="utf-8")


def try_install_capture(
    cap: dict,
    crate: str,
    version: str,
    repository: str,
    bl: set[str],
    existing: set[str],
    written: set[str],
) -> str | None:
    body = cap["body"]
    if len(body) > 400_000:
        return None
    stems = stems_from_body(body)
    if not stems:
        return None
    if any(len(s) < 2 for s in stems):
        return None
    if any("/" in s or "\\" in s for s in stems):
        return None
    if any(s in JUNK_COMPDEF_STEMS for s in stems):
        return None
    if any(s in bl for s in stems):
        return None
    dest = dest_name(stems)
    if not dest or not re.fullmatch(r"_[A-Za-z0-9_.-]+", dest):
        return None
    if dest.startswith("__"):
        return None
    if dest in existing or dest in written:
        return None
    write_completion(dest, body, crate, version, repository, cap["probe_args"])
    if not zsh_nf(MORE / dest):
        (MORE / dest).unlink(missing_ok=True)
        return None
    written.add(dest)
    existing.add(dest)
    for s in stems:
        bl.add(s)
    return dest


def merge_blacklist(bl: set[str]) -> None:
    BLPATH.write_text("\n".join(sorted(bl)) + "\n", encoding="utf-8")


def parse_existence_tests(text: str) -> tuple[str, list[str]]:
    marker = "\n@test 'more_src has _"
    idx = text.find(marker)
    if idx == -1:
        raise RuntimeError("t-more-src-existence.zsh: missing more_src tests marker")
    prefix = text[: idx + 1]
    body = text[idx + 1:]
    lines = body.splitlines(True)
    blocks: list[str] = []
    buf: list[str] = []
    i = 0
    while i < len(lines):
        line = lines[i]
        if line.startswith("@test 'more_src has _"):
            if buf:
                blocks.append("".join(buf))
                buf = []
            buf.append(line)
            i += 1
            while i < len(lines):
                buf.append(lines[i])
                if lines[i].strip() == "}":
                    i += 1
                    break
                i += 1
            blocks.append("".join(buf))
            buf = []
            continue
        i += 1
    if buf:
        blocks.append("".join(buf))
    return prefix, blocks


def stem_from_test_block(block: str) -> str:
    m = re.match(r"@test 'more_src has _([^']+)'", block)
    return m.group(1) if m else ""


def merge_existence_tests(new_dests: list[str]) -> None:
    text = TESTPATH.read_text(encoding="utf-8")
    prefix, blocks = parse_existence_tests(text)
    have = {stem_from_test_block(b) for b in blocks if stem_from_test_block(b)}
    for dest in new_dests:
        stem = dest[1:] if dest.startswith("_") else dest
        if stem in have:
            continue
        blocks.append(
            f"@test 'more_src has _{stem}' {{\n"
            f"    assert \"$xsrc/_{stem}\" is_file\n"
            "}\n\n"
        )
        have.add(stem)
    indexed = list(enumerate(blocks))
    indexed.sort(key=lambda it: (stem_from_test_block(it[1]), it[0]))
    sorted_blocks = [b for _, b in indexed]
    TESTPATH.write_text(prefix + "".join(sorted_blocks), encoding="utf-8")


# ---------------- main -----------------------------------------------------------

def load_blacklist() -> set[str]:
    return {ln for ln in BLPATH.read_text().splitlines() if ln}


def existing_dests() -> set[str]:
    return {p.name for p in MORE.iterdir() if p.is_file() and p.name.startswith("_")}


def main() -> int:
    target = int(os.environ.get("HARVEST_TARGET", "50"))
    workers = int(os.environ.get("CRATES_WORKERS", "8"))
    install_timeout = float(os.environ.get("CRATES_INSTALL_TIMEOUT", "120"))
    probe_timeout = float(os.environ.get("CRATES_PROBE_TIMEOUT", "5"))
    max_cands = int(os.environ.get("CRATES_MAX_CANDIDATES", "3000"))
    force_refresh = os.environ.get("CRATES_FORCE_REFRESH", "0") == "1"

    if shutil.which("zsh") is None:
        print("error: zsh not on PATH (required for -nf validation)", file=sys.stderr)
        return 1
    if not BINSTALL.is_file():
        print(f"error: cargo-binstall not found at {BINSTALL}", file=sys.stderr)
        return 1

    bl = load_blacklist()
    existing = existing_dests()

    candidates = load_candidates(force_refresh=force_refresh)
    pre = len(candidates)
    candidates = [
        c for c in candidates
        if c["name"] not in bl
        and f"_{c['name']}" not in existing
    ]
    skipped = pre - len(candidates)
    candidates = candidates[:max_cands]
    print(
        f"# candidates: {len(candidates)} "
        f"(pre-filter dropped {skipped} already covered, cap={max_cands}, target={target})",
        file=sys.stderr,
        flush=True,
    )

    written: set[str] = set()
    install_attempted = 0
    install_ok = 0
    probe_ok = 0
    new_dests: list[str] = []

    with tempfile.TemporaryDirectory(prefix="crates-probe-") as tmp:
        tmproot = pathlib.Path(tmp)
        with ThreadPoolExecutor(max_workers=workers) as pool:
            futures = {
                pool.submit(harvest_one, c, install_timeout, probe_timeout, tmproot): c
                for c in candidates
            }
            try:
                for fut in as_completed(futures):
                    install_attempted += 1
                    if len(written) >= target:
                        for f in futures:
                            f.cancel()
                        continue
                    try:
                        result = fut.result()
                    except Exception:
                        continue
                    if not result:
                        continue
                    install_ok += 1
                    if not result["captures"]:
                        continue
                    probe_ok += 1
                    for cap in result["captures"]:
                        if len(written) >= target:
                            break
                        dest = try_install_capture(
                            cap,
                            result["crate"],
                            result["version"],
                            result["repository"],
                            bl,
                            existing,
                            written,
                        )
                        if dest:
                            new_dests.append(dest)
                            print(
                                f"# +{dest}  ({result['crate']}@{result['version']} "
                                f"via {' '.join(cap['probe_args'])})",
                                file=sys.stderr,
                                flush=True,
                            )
            except KeyboardInterrupt:
                pass

    if new_dests:
        merge_blacklist(bl)
        merge_existence_tests(sorted(written))

    print(json.dumps({
        "candidates_total": len(candidates),
        "install_attempted": install_attempted,
        "install_ok": install_ok,
        "probe_ok": probe_ok,
        "written": len(written),
        "target": target,
        "dests": sorted(new_dests),
    }, indent=2))
    return 0 if len(written) >= target else 2


if __name__ == "__main__":
    raise SystemExit(main())
