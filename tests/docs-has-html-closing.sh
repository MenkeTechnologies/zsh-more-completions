#!/usr/bin/env bash
# For this repo's docs/*.html files, pin that each file contains
# a `</html>` closing tag.
#
# An HTML document without `</html>` is technically unterminated.
# Modern browsers tolerate it via the "html element implicit end
# tag" parsing rule, but several real failure modes follow:
#
#   - HTML validators (validator.w3.org, prettier) report the
#     document as "unterminated" — fails on warnings-to-errors.
#   - Concatenation flows (`cat docs/header.html docs/footer.html`)
#     produce a document where the closing of the first runs into
#     the opening of the second with no boundary.
#   - Some screen-reader implementations treat an unclosed html
#     element as "still rendering" and emit a "loading" state
#     announcement.
#   - The browser's encoding-detection heuristic continues
#     scanning past EOF looking for late `<meta charset>`
#     declarations — wasted work.
#
# Test grep-checks for `</html>` (case-insensitive). Pass = at
# least one match per file. Fail = any file missing it.
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
    if ! grep -qiE '</html>' "$p" 2>/dev/null; then
        echo "FAIL  $p: missing </html> closing tag"
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
echo "Summary: $checked docs/*.html files checked, $flagged without </html>"

[[ $ok -eq 1 ]] && exit 0 || exit 1
