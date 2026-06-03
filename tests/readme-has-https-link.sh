#!/usr/bin/env bash
# For this repo's README.md (at repo root), pin that the file
# contains at least one `https://` link.
#
# Every MenkeTechnologies README links to:
#   - The repo's own GitHub URL (`https://github.com/MenkeTechnologies/<name>`)
#   - Its GitHub Pages docs (`https://menketechnologies.github.io/<name>/`)
#   - At least one upstream / related project reference
#
# A README with ZERO https:// links is the canonical "scaffold
# never finished" signal: someone ran `cargo new` (or equivalent),
# committed the auto-generated README, and never replaced the
# placeholder. The end-state user landing on the GitHub repo page
# sees a featureless wall of text with no entry points for "where
# do I find the docs / report a bug / read related work".
#
# Test scans for the literal `https://` substring (any host). Pass
# = at least one match. Fail = zero matches.
set -uo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root" || exit
ok=1

if [[ ! -f README.md ]]; then
    echo "SKIP  no README.md at repo root"
    exit 0
fi

cnt=$(grep -cE 'https://' README.md 2>/dev/null)
cnt=${cnt:-0}
if [[ "$cnt" -eq 0 ]]; then
    echo "FAIL  README.md contains zero https:// links — likely an unfinished scaffold"
    ok=0
fi

echo "---"
if [[ $ok -eq 1 ]]; then
    echo "Summary: README.md contains $cnt https:// link(s)"
    exit 0
else
    echo "Summary: README.md is missing all https:// links"
    exit 1
fi
