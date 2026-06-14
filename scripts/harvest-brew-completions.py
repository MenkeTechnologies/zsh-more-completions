#!/usr/bin/env python3
"""Harvest zsh completions from Homebrew bottles.

Bottles are tarballs hosted by Homebrew; their layout is
`<formula>/<version>/share/zsh/site-functions/_*`. These files are typically
hand-written by the formula author or maintainer and shipped as a static asset
— inline flag definitions, not runtime dispatchers — so they work as
standalone aggregator entries.

Pipeline per formula:
  1. Skip if `_<formula>` already in src/ or more_src/ or blacklist
  2. `brew fetch --quiet <formula>` to brew cache (no install)
  3. tarfile.open and stream-extract members matching site-functions/_*
  4. For each extracted file: dedup, validate with `zsh -nf`, write headers
     + body to more_src/_<stem>, add stem to blacklist
"""
from __future__ import annotations

import json
import os
import pathlib
import re
import shutil
import subprocess
import sys
import tarfile
import time
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

BREW_CACHE = pathlib.Path(
    subprocess.check_output(["brew", "--cache"], text=True).strip()
)
DOWNLOADS = BREW_CACHE / "downloads"

FETCH_TIMEOUT = float(os.environ.get("BREW_FETCH_TIMEOUT", "120"))

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


def all_formulae() -> list[str]:
    r = subprocess.run(["brew", "formulae"], capture_output=True, text=True, timeout=60)
    if r.returncode != 0:
        return []
    return [ln.strip() for ln in r.stdout.splitlines() if ln.strip()]


def stems_from_body(body: str) -> list[str]:
    import shlex
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


def brew_fetch(formula: str) -> pathlib.Path | None:
    """Fetch bottle for formula. Returns path to .tar.gz, None on failure."""
    try:
        r = subprocess.run(
            ["brew", "fetch", "--quiet", formula],
            capture_output=True, text=True, timeout=FETCH_TIMEOUT,
        )
    except (subprocess.TimeoutExpired, OSError):
        return None
    if r.returncode != 0:
        return None
    candidates = sorted(
        DOWNLOADS.glob(f"*--{formula}--*.bottle.tar.gz"),
        key=lambda p: p.stat().st_mtime,
        reverse=True,
    )
    return candidates[0] if candidates else None


def extract_completions(bottle_path: pathlib.Path) -> list[tuple[str, str]]:
    """Yield (basename, body) for every share/zsh/site-functions/_* in bottle.
    Returns a list so caller can release the tarfile fast."""
    out: list[tuple[str, str]] = []
    try:
        tf = tarfile.open(bottle_path, "r:gz")
    except (tarfile.TarError, OSError):
        return out
    try:
        for member in tf:
            if not member.isfile():
                continue
            parts = member.name.split("/")
            try:
                i_sf = parts.index("site-functions")
            except ValueError:
                continue
            if i_sf == 0 or parts[i_sf - 1] != "zsh":
                continue
            if i_sf + 1 != len(parts) - 1:
                continue
            basename = parts[-1]
            if not basename.startswith("_") or basename.startswith("__"):
                continue
            if not re.fullmatch(r"_[A-Za-z0-9_.+-]+", basename):
                continue
            f = tf.extractfile(member)
            if not f:
                continue
            data = f.read()
            try:
                body = data.decode("utf-8")
            except UnicodeDecodeError:
                body = data.decode("utf-8", errors="replace")
            out.append((basename, body))
    finally:
        tf.close()
    return out


def is_cobra_runtime_gen(body: str) -> bool:
    """Cobra's runtime-emitted completion ships these markers and nothing
    else does. The script is a dispatcher to `<bin> __complete` — useless
    in an aggregator because it requires the binary on $PATH."""
    return "shellCompDirectiveKeepOrder" in body and "BASH_COMP_DEBUG_FILE" in body


def install_completion(
    formula: str, basename: str, body: str,
    bl: set[str], existing: set[str], written_dests: set[str],
) -> str | None:
    if is_cobra_runtime_gen(body):
        return None
    # Strip the redundant runtime-registration line cobra and others emit.
    body = re.sub(r"^compdef _\S+\s.*\n?", "", body, flags=re.M)
    stems = stems_from_body(body)
    if not stems:
        return None
    for s in stems:
        if len(s) < 2 or s in JUNK_COMPDEF_STEMS or s in bl:
            return None
    dest = basename
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
        f"# Source: Homebrew bottle\n",
        f"# Formula: {formula}\n",
        f"# Type: maintainer-shipped (Homebrew)\n",
        f"# Harvested: {time.strftime('%Y-%m-%d', time.gmtime())}\n",
    ]
    rest = [l for i, l in enumerate(lines) if i != compdef_idx]
    content = lines[compdef_idx] + "".join(headers) + "".join(rest)

    out = bucket_for(dest) / dest
    out.write_text(content, encoding="utf-8")
    if not zsh_nf(out):
        out.unlink(missing_ok=True)
        return None
    written_dests.add(dest)
    existing.add(dest)
    for s in stems:
        bl.add(s)
    return dest


def process_formula(
    formula: str,
    bl: set[str], existing: set[str], written_dests: set[str], lock,
) -> list[tuple[str, str]]:
    """Returns list of (formula, dest) for new captures."""
    # Cheap pre-filter: skip if `_<formula>` is already known and the formula
    # is unlikely to ship companion completions for separate stems.
    bottle = brew_fetch(formula)
    if not bottle:
        return []
    captures = extract_completions(bottle)
    if not captures:
        return []
    out: list[tuple[str, str]] = []
    with lock:
        for basename, body in captures:
            dest = install_completion(formula, basename, body, bl, existing, written_dests)
            if dest:
                out.append((formula, dest))
    return out


def main() -> int:
    target = int(os.environ.get("HARVEST_TARGET", "50"))
    workers = int(os.environ.get("BREW_WORKERS", "8"))
    max_formulae = int(os.environ.get("BREW_MAX_FORMULAE", "0"))  # 0 = unlimited

    bl = load_blacklist()
    existing = existing_basenames()
    written_dests: set[str] = set()

    formulae = all_formulae()
    print(
        json.dumps({"phase": "enumerate", "formulae": len(formulae), "target": target, "workers": workers}),
        file=sys.stderr, flush=True,
    )

    # Pre-filter: skip formulae where `_<name>` is already covered AND the
    # name itself is blacklisted (companion completions are still possible
    # but rare for already-covered tools).
    candidates = [
        f for f in formulae
        if f"_{f}" not in existing and f not in bl
    ]
    if max_formulae > 0:
        candidates = candidates[:max_formulae]
    print(
        json.dumps({"phase": "candidates", "count": len(candidates)}),
        file=sys.stderr, flush=True,
    )

    import threading
    lock = threading.Lock()

    with ThreadPoolExecutor(max_workers=workers) as pool:
        futs = {pool.submit(process_formula, f, bl, existing, written_dests, lock): f for f in candidates}
        for fut in as_completed(futs):
            try:
                results = fut.result()
            except Exception as e:
                continue
            for formula, dest in results:
                print(
                    json.dumps({"phase": "install", "formula": formula, "dest": dest}),
                    flush=True,
                )
            if len(written_dests) >= target:
                for f in futs:
                    f.cancel()
                break

    new_list = sorted(written_dests)
    if new_list:
        merge_blacklist(bl)
        merge_existence_tests(new_list)

    print(json.dumps({
        "phase": "summary",
        "formulae_total": len(formulae),
        "candidates": len(candidates),
        "installed": len(written_dests),
        "target": target,
        "dests": new_list,
    }, indent=2))
    return 0 if len(written_dests) >= target else 2


if __name__ == "__main__":
    raise SystemExit(main())
