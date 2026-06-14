#!/usr/bin/env python3
"""Harvest zsh completions from GitHub release tarballs.

Pipeline per repo:
  1. `gh api repos/{slug}/releases/latest` to get asset list
  2. Pick smallest archive asset, preferring darwin/arm64 binary distributions
  3. Download via `curl` (no API quota cost, goes to release CDN)
  4. Extract .tar.gz/.tgz/.zip
  5. Walk extracted tree for `_*` files under standard completion paths
  6. For each: reject cobra runtime-gen, strip compdef call, validate with
     zsh -nf, write to more_src with provenance headers
  7. Delete extracted tree + asset
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
import tarfile
import time
import zipfile
from concurrent.futures import ThreadPoolExecutor, as_completed

REPO = pathlib.Path(os.environ.get("REPO", pathlib.Path(__file__).resolve().parents[1]))
MORE = REPO / "more_src"
MORE2 = REPO / "more_src2"
MORE3 = REPO / "more_src3"
MORE4 = REPO / "more_src4"
MORE5 = REPO / "more_src5"
MORE6 = REPO / "more_src6"

def bucket_for(name: str) -> pathlib.Path:
    # Split completions into 6 dirs by first letter so each fpath dir's compiled
    # .zwc digest stays small. Large digests (>~40MB) crash zsh on autoload; this
    # keeps every dir near ~20MB. #/digits/a-c -> more_src, d-g -> more_src2,
    # h-l -> more_src3, m-p -> more_src4, q-s -> more_src5, t-z -> more_src6.
    stem = name[1:] if name.startswith('_') else name
    if not stem:
        return MORE
    c = stem[0].lower()
    if 'd' <= c <= 'g':
        return MORE2
    if 'h' <= c <= 'l':
        return MORE3
    if 'm' <= c <= 'p':
        return MORE4
    if 'q' <= c <= 's':
        return MORE5
    if 't' <= c <= 'z':
        return MORE6
    return MORE
SRC = REPO / "src"
BLPATH = REPO / "blacklist.txt"
TESTPATH = REPO / "tests/t-more-src-existence.zsh"
TREE_FILE = pathlib.Path(os.environ.get("RELEASES_TREE_FILE", str(REPO / "scripts/harvest-tree-repos.txt")))

WORKDIR = pathlib.Path(os.environ.get("RELEASES_WORKDIR", f"/tmp/zmc-gh-releases-{os.getpid()}"))

API_TIMEOUT = float(os.environ.get("RELEASES_API_TIMEOUT", "30"))
DOWNLOAD_TIMEOUT = float(os.environ.get("RELEASES_DOWNLOAD_TIMEOUT", "120"))
EXTRACT_TIMEOUT = float(os.environ.get("RELEASES_EXTRACT_TIMEOUT", "60"))
MAX_ASSET_BYTES = int(os.environ.get("RELEASES_MAX_ASSET_BYTES", str(120 * 1024 * 1024)))

# Paths inside an archive where a zsh completion file might be found.
COMPLETION_DIR_MARKERS = (
    "share/zsh/site-functions",
    "completions/zsh",
    "completion/zsh",
    "zsh-completions",
    "zsh/completions",
    "zsh/site-functions",
    "contrib/completion/zsh",
    "contrib/completions/zsh",
    "shell/zsh",
    "etc/completion/zsh",
    "autocomplete",
    "auto-complete",
    "complete",
    "completions",
    "completion",
)

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
    for d in (MORE, MORE2, MORE3, MORE4, MORE5, MORE6, SRC):
        if d.is_dir():
            out.update(p.name for p in d.iterdir() if p.is_file() and p.name.startswith("_"))
    return out


def load_slugs() -> list[str]:
    slugs: list[str] = []
    seen: set[str] = set()
    for ln in TREE_FILE.read_text(encoding="utf-8", errors="replace").splitlines():
        s = ln.strip()
        if not s or s.startswith("#"):
            continue
        if "/" not in s or s in seen:
            continue
        seen.add(s)
        slugs.append(s)
    return slugs


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


def fetch_latest_release(slug: str) -> dict | None:
    proc = subprocess.run(
        ["gh", "api", f"repos/{slug}/releases/latest"],
        capture_output=True, text=True, timeout=API_TIMEOUT,
    )
    if proc.returncode != 0:
        return None
    try:
        return json.loads(proc.stdout)
    except json.JSONDecodeError:
        return None


def pick_asset(release: dict) -> dict | None:
    """Score and pick the most promising archive asset."""
    assets = release.get("assets") or []
    candidates: list[tuple[int, int, dict]] = []
    for a in assets:
        name = (a.get("name") or "").lower()
        if not name:
            continue
        if not name.endswith((".tar.gz", ".tgz", ".zip", ".tar.xz", ".tar.zst")):
            continue
        # skip source tarballs and pure debug artifacts
        if "src" in name or "source" in name or "sources" in name:
            continue
        if any(t in name for t in ("sha256", "checksums", ".sig", ".asc", "minisig")):
            continue
        size = int(a.get("size") or 0)
        if size > MAX_ASSET_BYTES:
            continue
        score = 0
        if any(t in name for t in ("darwin", "macos", "apple", "osx")):
            score += 4
        if any(t in name for t in ("aarch64", "arm64", "universal")):
            score += 2
        if "x86_64" in name or "amd64" in name:
            score += 1
        # special bonus for completion-only bundles
        if "completion" in name:
            score += 6
        candidates.append((score, size, a))
    if not candidates:
        return None
    candidates.sort(key=lambda x: (-x[0], x[1]))
    return candidates[0][2]


def download(url: str, dest: pathlib.Path) -> bool:
    try:
        r = subprocess.run(
            ["curl", "-sSL", "--retry", "2", "--max-time", str(int(DOWNLOAD_TIMEOUT)),
             "-o", str(dest), url],
            capture_output=True, text=True, timeout=DOWNLOAD_TIMEOUT + 30,
        )
    except (subprocess.TimeoutExpired, OSError):
        return False
    return r.returncode == 0 and dest.exists() and dest.stat().st_size > 0


def extract_archive(archive: pathlib.Path, extract_dir: pathlib.Path) -> bool:
    """Extract supported archive formats. Return True on success."""
    name = archive.name.lower()
    extract_dir.mkdir(parents=True, exist_ok=True)
    try:
        if name.endswith((".tar.gz", ".tgz")):
            with tarfile.open(archive, "r:gz") as tf:
                tf.extractall(extract_dir, filter="data")
        elif name.endswith(".tar.xz"):
            with tarfile.open(archive, "r:xz") as tf:
                tf.extractall(extract_dir, filter="data")
        elif name.endswith(".tar.zst"):
            r = subprocess.run(
                ["tar", "--zstd", "-xf", str(archive), "-C", str(extract_dir)],
                capture_output=True, timeout=EXTRACT_TIMEOUT,
            )
            return r.returncode == 0
        elif name.endswith(".zip"):
            with zipfile.ZipFile(archive) as zf:
                zf.extractall(extract_dir)
        else:
            return False
    except (tarfile.TarError, zipfile.BadZipFile, OSError, EOFError, RuntimeError):
        return False
    return True


def walk_for_completions(extract_dir: pathlib.Path) -> list[tuple[pathlib.Path, str]]:
    """Walk extracted tree, return (path, body) for any file that has
    `#compdef` and lives under a known completion directory."""
    results: list[tuple[pathlib.Path, str]] = []
    for p in extract_dir.rglob("*"):
        if not p.is_file():
            continue
        name = p.name
        if name.startswith("__"):
            continue
        # Quick reject by suffix — non-zsh artifacts in same dirs
        if any(name.endswith(s) for s in (".bash", ".fish", ".ps1", ".md", ".txt",
                                          ".1", ".png", ".jpg", ".html", ".json",
                                          ".yaml", ".yml", ".sh", ".elv", ".nu")):
            continue
        # Accept either `_*` or `*.zsh` shapes; reject everything else as filename
        is_underscore = re.fullmatch(r"_[A-Za-z0-9_.+-]+", name) is not None
        is_zsh_ext = name.lower().endswith(".zsh") and not name.startswith(".")
        if not (is_underscore or is_zsh_ext):
            continue
        relstr = str(p.relative_to(extract_dir))
        if not any(m in relstr for m in COMPLETION_DIR_MARKERS):
            continue
        try:
            body = p.read_text(encoding="utf-8", errors="replace")
        except OSError:
            continue
        if "#compdef" not in body:
            continue
        results.append((p, body))
    return results


def install_completion(
    slug: str, asset_name: str, basename: str, body: str,
    bl: set[str], existing: set[str], written_dests: set[str],
) -> str | None:
    if is_cobra_runtime_gen(body):
        return None
    body = re.sub(r"^compdef _\S+\s.*\n?", "", body, flags=re.M)
    stems = stems_from_body(body)
    if not stems:
        return None
    for s in stems:
        if len(s) < 2 or s in JUNK_COMPDEF_STEMS or s in bl:
            return None
    # Derive dest from stem when filename isn't already in `_<stem>` shape
    # (e.g., release ships `autocomplete/bat.zsh` whose stem is "bat").
    if re.fullmatch(r"_[A-Za-z0-9_.+-]+", basename):
        dest = basename
    else:
        s0 = stems[0].replace("/", "-")
        if not re.fullmatch(r"[A-Za-z0-9_.-]+", s0):
            return None
        dest = f"_{s0}"
    if dest.startswith("__"):
        return None
    if dest in existing or dest in written_dests:
        return None
    if len(body) > 600_000:
        return None
    lines = body.lstrip("﻿").lstrip().splitlines(keepends=True)
    compdef_idx = next(
        (i for i, l in enumerate(lines) if l.lstrip().startswith("#compdef")),
        None,
    )
    if compdef_idx is None:
        return None
    headers = [
        f"# Source: https://github.com/{slug}\n",
        f"# Release asset: {asset_name}\n",
        f"# Type: maintainer-shipped (GitHub release)\n",
        f"# Harvested: {time.strftime('%Y-%m-%d', time.gmtime())}\n",
    ]
    rest = [l for i, l in enumerate(lines) if i != compdef_idx]
    out = bucket_for(dest) / dest
    out.write_text(lines[compdef_idx] + "".join(headers) + "".join(rest), encoding="utf-8")
    if not zsh_nf(out):
        out.unlink(missing_ok=True)
        return None
    written_dests.add(dest)
    existing.add(dest)
    for s in stems:
        bl.add(s)
    return dest


def process_slug(
    slug: str,
    bl: set[str], existing: set[str], written_dests: set[str], lock,
) -> list[tuple[str, str]]:
    """Returns list of (slug, dest) for new captures from this repo."""
    out: list[tuple[str, str]] = []
    release = fetch_latest_release(slug)
    if not release:
        return out
    asset = pick_asset(release)
    if not asset:
        return out
    url = asset.get("browser_download_url")
    if not url:
        return out
    slug_dir = WORKDIR / re.sub(r"[^A-Za-z0-9_.-]", "-", slug)
    slug_dir.mkdir(parents=True, exist_ok=True)
    archive = slug_dir / asset["name"]
    extract = slug_dir / "extracted"
    try:
        if not download(url, archive):
            return out
        if not extract_archive(archive, extract):
            return out
        captures = walk_for_completions(extract)
        if not captures:
            return out
        with lock:
            for path, body in captures:
                dest = install_completion(
                    slug, asset["name"], path.name, body,
                    bl, existing, written_dests,
                )
                if dest:
                    out.append((slug, dest))
    finally:
        shutil.rmtree(slug_dir, ignore_errors=True)
    return out


def main() -> int:
    target = int(os.environ.get("HARVEST_TARGET", "100"))
    workers = int(os.environ.get("RELEASES_WORKERS", "8"))
    max_slugs = int(os.environ.get("RELEASES_MAX_SLUGS", "0"))

    WORKDIR.mkdir(parents=True, exist_ok=True)

    bl = load_blacklist()
    existing = existing_basenames()
    written_dests: set[str] = set()

    slugs = load_slugs()
    if max_slugs > 0:
        slugs = slugs[:max_slugs]

    print(
        json.dumps({"phase": "enumerate", "slugs": len(slugs), "target": target, "workers": workers}),
        file=sys.stderr, flush=True,
    )

    import threading
    lock = threading.Lock()

    try:
        with ThreadPoolExecutor(max_workers=workers) as pool:
            futs = {pool.submit(process_slug, s, bl, existing, written_dests, lock): s for s in slugs}
            for fut in as_completed(futs):
                try:
                    results = fut.result()
                except Exception:
                    continue
                for slug, dest in results:
                    print(
                        json.dumps({"phase": "install", "slug": slug, "dest": dest}),
                        flush=True,
                    )
                if len(written_dests) >= target:
                    for f in futs:
                        f.cancel()
                    break
    finally:
        shutil.rmtree(WORKDIR, ignore_errors=True)

    new_list = sorted(written_dests)
    if new_list:
        merge_blacklist(bl)
        merge_existence_tests(new_list)

    print(json.dumps({
        "phase": "summary",
        "slugs_tried": len(slugs),
        "installed": len(written_dests),
        "target": target,
        "dests": new_list,
    }, indent=2))
    return 0 if len(written_dests) >= target else 2


if __name__ == "__main__":
    raise SystemExit(main())
