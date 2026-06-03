#!/usr/bin/env bash
# For this repo's docs/*.html files (any depth, excluding target/),
# pin that each file ends with a final newline byte.
#
# Same POSIX-line-definition floor as the README/man-page newline
# gates: a file without `\n` at end-of-file:
#   - Shows `\ No newline at end of file` in every git diff, making
#     every edit look like a 2-line replacement of the last line.
#   - Breaks `cat docs/header.html docs/body.html > out.html` build
#     concatenation flows — the closing tag of one runs into the
#     opening tag of the next.
#   - Undercounts in `wc -l`, breaking line-count audit gates.
#   - Trips `prettier --check` and many linters under
#     warnings-to-errors.
#
# Test reads the last byte of each `docs/**/*.html` file via
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
done < <(find . -path './.git' -prune -o -path '*/target' -prune -o -type f -path '*/docs/*' -name '*.html' -print 2>/dev/null)

if [[ $checked -eq 0 ]]; then
    echo "SKIP  no docs/*.html files in this repo"
    exit 0
fi

echo "---"
echo "Summary: $checked docs/*.html files checked, $flagged without final newline"

[[ $ok -eq 1 ]] && exit 0 || exit 1
