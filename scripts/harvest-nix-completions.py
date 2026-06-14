#!/usr/bin/env python3
"""Harvest zsh completions from nixpkgs via Docker.

Mechanism per package:
  1. Inside Docker container, set up nixpkgs channel
  2. For each `pkgs/by-name/*/*/package.nix` that mentions an install-shell-
     completion macro (or related path), `nix-build` it (uses binary cache;
     downloads not builds for cached pkgs)
  3. Walk `result/share/zsh/site-functions/_*` and copy each completion to
     the host-mounted captures dir
  4. Outside Docker, install each capture into more_src/ via the standard
     pipeline (cobra filter, dedupe, zsh -nf validation, header)

Persistence:
  - Persistent docker volume `zmc-nix-store` for nix store (avoids re-fetch
    on re-runs)
  - Host dir /tmp/zmc-nix-captures for captured files
  - /work/progress.txt inside the volume tracks tried attrs (resumable)
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
from concurrent.futures import ThreadPoolExecutor

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

CAPTURES_DIR = pathlib.Path(
    os.environ.get("NIX_CAPTURES_DIR", "/tmp/zmc-nix-captures")
)
DOCKER_VOLUME = os.environ.get("NIX_DOCKER_VOLUME", "zmc-nix-store")
NIX_IMAGE = os.environ.get("NIX_IMAGE", "nixos/nix:latest")
DOCKER_TIMEOUT = float(os.environ.get("NIX_DOCKER_TIMEOUT", "14400"))  # 4h

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


NIX_HARVEST_SCRIPT = r"""
set +e
echo "=== setting up nix channel ==="
nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs >/dev/null 2>&1
nix-channel --update 2>&1 | tail -1
NIXPKGS=$(nix-instantiate --eval -E "toString <nixpkgs>" | tr -d '"')
echo "nixpkgs: $NIXPKGS"

mkdir -p /work/captures
touch /work/progress.txt

echo "=== building candidate list ==="
> /work/candidates.txt

# Pass 1: by-name layout (modern convention) — dir name == attr name
for d in "$NIXPKGS"/pkgs/by-name/*/*/; do
    f="${d}package.nix"
    [ -f "$f" ] || continue
    if grep -qE "installShellCompletion|site-functions|completions/zsh|share/zsh" "$f"; then
        basename "$d" >> /work/candidates.txt
    fi
done
byname=$(wc -l < /work/candidates.txt)
echo "by-name candidates: $byname"

# Pass 2: legacy layout (pkgs/applications/, pkgs/development/, etc.) —
# default.nix in a leaf dir; attr name guessed as the leaf dir basename.
# Skip lib/, top-level/, build-support/, dev-aux paths.
if [ "${NIX_INCLUDE_LEGACY:-1}" = "1" ]; then
    find "$NIXPKGS"/pkgs \
        -path "*/by-name" -prune -o \
        -path "*/lib" -prune -o \
        -path "*/top-level" -prune -o \
        -path "*/build-support" -prune -o \
        -path "*/test" -prune -o \
        -path "*/tests" -prune -o \
        -name default.nix -print 2>/dev/null \
      | while read -r f; do
            if grep -qE "installShellCompletion|site-functions|completions/zsh|share/zsh" "$f"; then
                attr=$(basename "$(dirname "$f")")
                # Only accept attr names that look like valid nix attrs.
                case "$attr" in
                    [a-z]*) echo "$attr" ;;
                esac
            fi
        done >> /work/candidates.txt
fi

# Dedup the combined list (sort -u is order-losing but the nixos/nix image
# doesn't ship awk).
sort -u /work/candidates.txt > /work/candidates.dedup
mv /work/candidates.dedup /work/candidates.txt

total=$(wc -l < /work/candidates.txt)
echo "candidates (deduped): $total"

n=0
captured=0
while IFS= read -r attr; do
    n=$((n+1))
    if grep -qx "$attr" /work/progress.txt 2>/dev/null; then
        continue
    fi
    # Build with timeout; --no-out-link avoids polluting /tmp with symlinks
    out=$(timeout 90 nix-build "<nixpkgs>" -A "$attr" --no-out-link 2>/dev/null) || {
        echo "$attr	fail" >> /work/progress.txt
        continue
    }
    found=0
    if [ -d "$out/share/zsh/site-functions" ]; then
        for f in "$out"/share/zsh/site-functions/_*; do
            [ -f "$f" ] || continue
            bn=$(basename "$f")
            # Copy with attr-prefix so we know which package each came from
            cp "$f" "/work/captures/${attr}=${bn}" 2>/dev/null && found=$((found+1))
        done
    fi
    if [ $found -gt 0 ]; then
        captured=$((captured+found))
        echo "{\"phase\":\"capture\",\"attr\":\"$attr\",\"files\":$found}" >&2
    fi
    echo "$attr	ok($found)" >> /work/progress.txt
    if [ $((n % 25)) -eq 0 ]; then
        echo "{\"phase\":\"progress\",\"tried\":$n,\"of\":$total,\"captured\":$captured}" >&2
    fi
done < /work/candidates.txt

echo "{\"phase\":\"docker-done\",\"tried\":$n,\"captured\":$captured}" >&2
"""


def run_docker_harvest() -> int:
    CAPTURES_DIR.mkdir(parents=True, exist_ok=True)
    cmd = [
        "docker", "run", "--rm",
        "-v", f"{DOCKER_VOLUME}:/nix",
        "-v", f"{CAPTURES_DIR}:/work",
        NIX_IMAGE,
        "sh", "-c", NIX_HARVEST_SCRIPT,
    ]
    print(json.dumps({"phase": "docker-start", "image": NIX_IMAGE}), file=sys.stderr, flush=True)
    proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    # Stream stderr (progress events) to our stderr
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
    """Walk CAPTURES_DIR/captures (the Docker-mounted subdir); install each
    capture via standard pipeline. Returns (count, list of dests)."""
    bl = load_blacklist()
    existing = existing_basenames()
    written_dests: set[str] = set()

    captures_subdir = CAPTURES_DIR / "captures"
    if not captures_subdir.is_dir():
        captures_subdir = CAPTURES_DIR  # fallback
    captures = sorted(captures_subdir.iterdir())
    print(json.dumps({"phase": "captures-found", "count": len(captures)}), file=sys.stderr, flush=True)

    for cap in captures:
        if not cap.is_file():
            continue
        if "=" not in cap.name:
            continue
        attr, _, basename = cap.name.partition("=")
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
        # Normalize dest name
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
            f"# Source: nixpkgs (https://github.com/NixOS/nixpkgs)\n",
            f"# Package: {attr}\n",
            f"# Type: maintainer-shipped (nixpkgs)\n",
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
            json.dumps({"phase": "install", "attr": attr, "dest": dest}),
            flush=True,
        )

    new_list = sorted(written_dests)
    if new_list:
        merge_blacklist(bl)
        merge_existence_tests(new_list)
    return len(written_dests), new_list


def main() -> int:
    rc = run_docker_harvest()
    print(json.dumps({"phase": "docker-rc", "rc": rc}), file=sys.stderr, flush=True)
    n, dests = install_captures()
    print(json.dumps({
        "phase": "summary",
        "installed": n,
        "captures_dir": str(CAPTURES_DIR),
        "dests": dests,
    }, indent=2))
    return 0 if n > 0 else 2


if __name__ == "__main__":
    raise SystemExit(main())
