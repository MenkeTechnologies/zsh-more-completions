#!/usr/bin/env bash
# For this repo's .github/workflows/*.yml files, pin that each
# file ends with a final newline byte.
#
# Same POSIX text-file convention as README/docs/man-page newline
# gates. A workflow YAML without final `\n`:
#   - Shows `\ No newline at end of file` in every git diff —
#     every workflow edit appears as a 2-line replacement of the
#     last line instead of the actual single-line change.
#   - When workflows are templated/generated (e.g., GitHub
#     Actions release-please, or any CI-templating tool), the
#     concat path produces a corrupt YAML where the closing of
#     one template runs into the opening of the next.
#   - Trips `yamllint` rule `new-line-at-end-of-file` under
#     warnings-to-errors.
#   - Undercounts in `wc -l`.
#
# Test reads the last byte of each `.github/workflows/*.yml` via
# `tail -c1` and matches against `\n`.
set -uo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root" || exit
ok=1

checked=0
flagged=0
files_with_issues=()

while IFS= read -r p; do
    [[ -f "$p" ]] || continue
    checked=$((checked + 1))
    last=$(tail -c1 "$p" 2>/dev/null | od -An -c | tr -d ' ')
    if [[ "$last" != '\n' ]]; then
        echo "FAIL  $p: file does not end with a newline (last byte: '$last')"
        flagged=$((flagged + 1))
        files_with_issues+=("$p")
        ok=0
    fi
done < <(find . -path './.git' -prune -o -type f -name '*.yml' -path '*/.github/workflows/*' -print 2>/dev/null)

if [[ $checked -eq 0 ]]; then
    echo "SKIP  no .github/workflows/*.yml files in this repo"
    exit 0
fi

echo "---"
echo "Summary: $checked workflow yaml files checked, $flagged without final newline"

[[ $ok -eq 1 ]] && exit 0 || exit 1
