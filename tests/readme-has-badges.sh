#!/usr/bin/env bash
# For this repo's README.md (at repo root), pin that the file
# contains at least one shields.io-style badge: `[![…](url)](href)`.
#
# Every active MenkeTechnologies repo ships at least one badge
# at the top of its README:
#   - CI status (GitHub Actions build badge)
#   - License (MIT shield)
#   - Crates.io version (for Rust binaries)
#   - GitHub Pages docs (for docs/-shipping repos)
#
# A README with ZERO badges is the canonical "I never set up the
# project page" signal:
#   - Visitors can't tell at a glance whether CI is green.
#   - Tag/version isn't surfaced.
#   - License isn't surfaced (legal-review tools that scan
#     READMEs for license SPDX shields silently miss the repo).
#
# Test scans for the literal `[![` prefix (every shields.io badge
# starts with this — alt-text link wrapper). Pass = at least one
# match. Fail = zero matches.
set -uo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root" || exit
ok=1

if [[ ! -f README.md ]]; then
    echo "SKIP  no README.md at repo root"
    exit 0
fi

cnt=$(grep -cE '\[!\[' README.md 2>/dev/null)
cnt=${cnt:-0}
if [[ "$cnt" -eq 0 ]]; then
    echo "FAIL  README.md has zero shields.io-style badges — unset project page"
    ok=0
fi

echo "---"
if [[ $ok -eq 1 ]]; then
    echo "Summary: README.md has $cnt badge(s)"
    exit 0
else
    echo "Summary: README.md missing all badges"
    exit 1
fi
