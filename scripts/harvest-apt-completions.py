#!/usr/bin/env python3
"""Harvest zsh completions from Debian apt packages via Docker.

Mechanism:
  1. Fetch Debian sid Contents-arm64.gz index (single ~14MB file)
  2. Grep for files under /usr/share/zsh/{vendor-completions,site-functions}/_*
  3. Dedup candidates against corpus + blacklist
  4. For each surviving package, run `apt-get download` in a Debian container
     (uses host-mounted volume for the .deb files), then `dpkg-deb -x` and
     copy completion to captures dir
  5. Install via standard pipeline (cobra filter, zsh -nf, headers)
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
import time
import urllib.request

REPO = pathlib.Path(os.environ.get("REPO", pathlib.Path(__file__).resolve().parents[1]))
MORE = REPO / "more_src"
MORE2 = REPO / "more_src2"
MORE3 = REPO / "more_src3"

def bucket_for(name: str) -> pathlib.Path:
    # Split more_src into 3 dirs (a-h -> more_src, i-r -> more_src2, s-z -> more_src3)
    # to keep each under 10k files (zsh chokes above ~10k entries per fpath dir).
    stem = name[1:] if name.startswith('_') else name
    if not stem:
        return MORE
    c = stem[0].lower()
    if 'i' <= c <= 'r':
        return MORE2
    if 's' <= c <= 'z':
        return MORE3
    return MORE
SRC = REPO / "src"
BLPATH = REPO / "blacklist.txt"
TESTPATH = REPO / "tests/t-more-src-existence.zsh"

WORKDIR = pathlib.Path(os.environ.get("APT_WORKDIR", "/tmp/zmc-apt"))
CONTENTS_URL = os.environ.get(
    "APT_CONTENTS_URL",
    "http://deb.debian.org/debian/dists/sid/main/Contents-arm64.gz",
)
CONTENTS_FILE = WORKDIR / "Contents.gz"
CAPTURES_DIR = WORKDIR / "captures"

DOCKER_IMAGE = os.environ.get("APT_DOCKER_IMAGE", "debian:stable")
DOCKER_TIMEOUT = float(os.environ.get("APT_DOCKER_TIMEOUT", "3600"))

JUNK_COMPDEF_STEMS = frozenset(
    {"foo", "bar", "baz", "qux", "HEAD", "myapp", "mysimpleapp", "nometa",
     "cmd", "command", "main", "example", "demo"}
)


def load_blacklist() -> set[str]:
    if not BLPATH.is_file():
        return set()
    return {ln for ln in BLPATH.read_text().splitlines() if ln}


def existing_basenames() -> set[str]:
    out: set[str] = set()
    for d in (MORE, MORE2, MORE3, SRC):
        if d.is_dir():
            out.update(p.name for p in d.iterdir() if p.is_file() and p.name.startswith("_"))
    return out


def stems_from_body(body: str) -> list[str]:
    m = re.search(r"^#compdef\b.*$", body, re.M)
    if not m:
        return []
    frag = m.group(0)[len("#compdef"):].strip()
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


def zsh_nf(path: pathlib.Path) -> bool:
    r = subprocess.run(["zsh", "-nf", str(path)], capture_output=True, text=True)
    return r.returncode == 0


def is_cobra_runtime_gen(body: str) -> bool:
    return "shellCompDirectiveKeepOrder" in body and "BASH_COMP_DEBUG_FILE" in body


def parse_existence_tests(text: str) -> tuple[str, list[str]]:
    marker = "\n@test 'more_src has _"
    idx = text.find(marker)
    if idx == -1:
        raise RuntimeError("missing more_src tests marker")
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
            f'    assert "$xsrc/_{stem}" is_file\n'
            "}\n\n"
        )
        have.add(stem)
    indexed = list(enumerate(blocks))
    indexed.sort(key=lambda it: (stem_from_test_block(it[1]), it[0]))
    TESTPATH.write_text(prefix + "".join(b for _, b in indexed), encoding="utf-8")


def merge_blacklist(bl: set[str]) -> None:
    BLPATH.write_text("\n".join(sorted(bl)) + "\n", encoding="utf-8")


def fetch_contents() -> None:
    """Fetch Debian Contents index to host. Idempotent."""
    if CONTENTS_FILE.exists() and CONTENTS_FILE.stat().st_size > 1_000_000:
        return
    r = subprocess.run(
        ["curl", "-sSL", "-o", str(CONTENTS_FILE), CONTENTS_URL],
        capture_output=True, text=True, timeout=120,
    )
    if r.returncode != 0:
        raise RuntimeError(f"Contents fetch failed: {r.stderr}")


def list_candidates() -> list[tuple[str, str]]:
    """Return (stem, debian_package_path) pairs for every zsh completion in
    Contents. The package path is like 'utils/ugrep' — only the basename
    'ugrep' is used as the apt package name."""
    r = subprocess.run(
        ["gzcat", str(CONTENTS_FILE)],
        capture_output=True, text=True, timeout=60,
    )
    if r.returncode != 0:
        return []
    out: list[tuple[str, str]] = []
    pat = re.compile(
        r"^usr/share/zsh/(?:vendor-completions|site-functions)/(_\S+)\s+(\S+)"
    )
    for line in r.stdout.splitlines():
        m = pat.match(line)
        if not m:
            continue
        stem_file = m.group(1)
        pkg_path = m.group(2)
        pkg_name = pkg_path.split("/")[-1]
        out.append((stem_file, pkg_name))
    return out


NIX_HARVEST_SCRIPT = r"""
set +e
cd /work
mkdir -p downloads captures

# /work/packages.txt has one apt package name per line
n=0
ok=0
while IFS= read -r pkg; do
    n=$((n+1))
    # Download into mounted volume
    pushd downloads >/dev/null 2>&1
    apt-get download "$pkg" 2>/dev/null >/dev/null || {
        popd >/dev/null 2>&1
        continue
    }
    popd >/dev/null 2>&1
    # find the just-downloaded deb
    deb=$(ls -t downloads/${pkg}_*.deb 2>/dev/null | head -1)
    [ -n "$deb" ] || continue
    # extract just the share/zsh path
    tmpdir=$(mktemp -d /tmp/dpkg.XXXXXX)
    dpkg-deb -x "$deb" "$tmpdir" 2>/dev/null
    for d in usr/share/zsh/vendor-completions usr/share/zsh/site-functions; do
        if [ -d "$tmpdir/$d" ]; then
            for f in "$tmpdir/$d"/_*; do
                [ -f "$f" ] || continue
                bn=$(basename "$f")
                cp "$f" "captures/${pkg}=${bn}" 2>/dev/null
                ok=$((ok+1))
            done
        fi
    done
    rm -rf "$tmpdir" "$deb"
    if [ $((n % 25)) -eq 0 ]; then
        echo "{\"phase\":\"progress\",\"tried\":$n,\"captured\":$ok}" >&2
    fi
done < /work/packages.txt
echo "{\"phase\":\"docker-done\",\"tried\":$n,\"captured\":$ok}" >&2
"""


def run_docker_harvest(packages: list[str]) -> int:
    pkgs_file = WORKDIR / "packages.txt"
    pkgs_file.write_text("\n".join(packages) + "\n")
    CAPTURES_DIR.mkdir(parents=True, exist_ok=True)
    (WORKDIR / "downloads").mkdir(parents=True, exist_ok=True)
    cmd = [
        "docker", "run", "--rm",
        "-v", f"{WORKDIR}:/work",
        DOCKER_IMAGE,
        "bash", "-c",
        "apt-get update -qq >/dev/null 2>&1; " + NIX_HARVEST_SCRIPT,
    ]
    print(json.dumps({"phase": "docker-start", "packages": len(packages)}), file=sys.stderr, flush=True)
    proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    import threading
    def pump(src, dst):
        for line in src:
            dst.write(line)
            dst.flush()
    t = threading.Thread(target=pump, args=(proc.stderr, sys.stderr), daemon=True)
    t.start()
    try:
        proc.wait(timeout=DOCKER_TIMEOUT)
    except subprocess.TimeoutExpired:
        proc.kill()
        return 1
    return proc.returncode


def install_captures() -> tuple[int, list[str]]:
    bl = load_blacklist()
    existing = existing_basenames()
    written_dests: set[str] = set()

    if not CAPTURES_DIR.is_dir():
        return 0, []
    captures = sorted(CAPTURES_DIR.iterdir())
    print(json.dumps({"phase": "captures-found", "count": len(captures)}), file=sys.stderr, flush=True)

    for cap in captures:
        if not cap.is_file() or "=" not in cap.name:
            continue
        pkg, _, basename = cap.name.partition("=")
        if not basename.startswith("_") or basename.startswith("__"):
            continue
        try:
            body = cap.read_text(encoding="utf-8", errors="replace")
        except OSError:
            continue
        if is_cobra_runtime_gen(body):
            continue
        body = re.sub(r"^compdef _\S+\s.*\n?", "", body, flags=re.M)
        stems = stems_from_body(body)
        if not stems:
            continue
        if any(len(s) < 2 or s in JUNK_COMPDEF_STEMS or s in bl for s in stems):
            continue
        if re.fullmatch(r"_[A-Za-z0-9_.+-]+", basename):
            dest = basename
        else:
            s0 = stems[0].replace("/", "-")
            if not re.fullmatch(r"[A-Za-z0-9_.-]+", s0):
                continue
            dest = f"_{s0}"
        if dest in existing or dest in written_dests:
            continue
        if len(body) > 600_000:
            continue
        lines = body.lstrip("﻿").lstrip().splitlines(keepends=True)
        compdef_idx = next(
            (i for i, l in enumerate(lines) if l.lstrip().startswith("#compdef")),
            None,
        )
        if compdef_idx is None:
            continue
        headers = [
            "# Source: Debian apt (debian.org)\n",
            f"# Package: {pkg}\n",
            "# Type: maintainer-shipped (Debian)\n",
            f"# Harvested: {time.strftime('%Y-%m-%d', time.gmtime())}\n",
        ]
        rest = [l for i, l in enumerate(lines) if i != compdef_idx]
        out = bucket_for(dest) / dest
        out.write_text(lines[compdef_idx] + "".join(headers) + "".join(rest), encoding="utf-8")
        if not zsh_nf(out):
            out.unlink(missing_ok=True)
            continue
        written_dests.add(dest)
        existing.add(dest)
        for s in stems:
            bl.add(s)
        print(
            json.dumps({"phase": "install", "pkg": pkg, "dest": dest}),
            flush=True,
        )

    new_list = sorted(written_dests)
    if new_list:
        merge_blacklist(bl)
        merge_existence_tests(new_list)
    return len(written_dests), new_list


def main() -> int:
    WORKDIR.mkdir(parents=True, exist_ok=True)
    print(json.dumps({"phase": "fetch-contents"}), file=sys.stderr, flush=True)
    fetch_contents()
    candidates = list_candidates()
    print(
        json.dumps({"phase": "contents-parsed", "files": len(candidates)}),
        file=sys.stderr, flush=True,
    )

    # Dedup candidates: drop if stem already covered or blacklisted
    bl = load_blacklist()
    existing = existing_basenames()
    seen_pkgs: set[str] = set()
    new_packages: list[str] = []
    for stem_file, pkg in candidates:
        stem = stem_file[1:] if stem_file.startswith("_") else stem_file
        if stem_file in existing or stem in bl:
            continue
        if pkg in seen_pkgs:
            continue
        seen_pkgs.add(pkg)
        new_packages.append(pkg)
    print(
        json.dumps({"phase": "candidates", "unique-packages": len(new_packages)}),
        file=sys.stderr, flush=True,
    )

    rc = run_docker_harvest(new_packages)
    print(json.dumps({"phase": "docker-rc", "rc": rc}), file=sys.stderr, flush=True)

    n, dests = install_captures()
    print(json.dumps({
        "phase": "summary",
        "candidates": len(new_packages),
        "installed": n,
        "dests": dests,
    }, indent=2))
    return 0 if n > 0 else 2


if __name__ == "__main__":
    raise SystemExit(main())
