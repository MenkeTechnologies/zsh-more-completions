#!/usr/bin/env python3
"""
For each `assert "$xsrc/_name" is_file` in t-more-src-existence.zsh, verify that
`more_src/_name` exists on disk with exact case. Catches macOS case-insensitive
false positives that fail on Linux CI.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
TEST_FILE = REPO / "tests" / "t-more-src-existence.zsh"
MORE_SRC = REPO / "more_src"


def main() -> int:
    if not TEST_FILE.is_file():
        print(f"missing {TEST_FILE}", file=sys.stderr)
        return 1
    text = TEST_FILE.read_text(encoding="utf-8", errors="replace")
    names = re.findall(r'assert "\$xsrc/(_[^"]+)" is_file', text)
    on_disk = {p.name for p in MORE_SRC.iterdir() if p.is_file() and p.name.startswith("_")}
    bad: list[tuple[str, str]] = []
    for n in names:
        p = MORE_SRC / n
        if p.is_file():
            continue
        alt = [x for x in on_disk if x.lower() == n.lower()]
        if len(alt) == 1:
            bad.append((n, f"use exact case: {alt[0]}"))
        else:
            bad.append((n, "missing on disk"))
    if bad:
        for name, reason in bad:
            print(f"BAD: {name} ({reason})", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
