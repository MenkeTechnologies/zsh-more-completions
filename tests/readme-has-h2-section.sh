#!/usr/bin/env bash
# For this repo's README.md (at repo root), pin that the file
# contains at least one `## ` markdown level-2 heading.
#
# A README with ONLY a single `# Title` heading and prose is the
# canonical "I never finished structuring this" smell. Every
# mature project README in the org has discrete `## Install`,
# `## Usage`, `## Configuration`, etc. sections — both for
# human reader-scanning and so the GitHub repo-page nav sidebar
# (which auto-generates from h2 headings) has useful entries.
#
# A README with no `## ` headings:
#   - Renders without a sidebar nav on github.com/<user>/<repo>.
#   - Has no ToC anchors that can be cross-referenced from other
#     docs (e.g. zsh-readme-format's `[See "Install"](#install)`
#     pattern only works with h2-or-deeper anchors).
#   - Signals "scaffolded but never structured" to anyone
#     evaluating the project.
#
# Test scans for any line matching `^## ` (markdown level-2
# heading, optionally with trailing text). Pass = at least one
# match. Fail = zero matches.
set -uo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root" || exit
ok=1

if [[ ! -f README.md ]]; then
    echo "SKIP  no README.md at repo root"
    exit 0
fi

cnt=$(grep -cE '^## ' README.md 2>/dev/null)
cnt=${cnt:-0}
if [[ "$cnt" -eq 0 ]]; then
    echo 'FAIL  README.md has zero "## " h2 sections — unstructured scaffold'
    ok=0
fi

echo "---"
if [[ $ok -eq 1 ]]; then
    echo "Summary: README.md has $cnt level-2 (## ) heading(s)"
    exit 0
else
    echo "Summary: README.md missing all level-2 headings"
    exit 1
fi
