#!/usr/bin/env bash
# For this repo's docs/*.html files, pin that each file contains
# a `<body>` opening tag.
#
# Like `</html>`, the `<body>` tag has an implicit-start parsing
# rule in HTML5 — browsers handle its absence — but every HTML
# tool downstream of the browser expects an explicit body:
#
#   - `prettier --check` flags missing body as a "no opening
#     tag for end tag" error.
#   - Static-analysis tools (htmlhint, validator.w3.org) emit
#     "section without <body>" warnings.
#   - Document outline algorithms (a11y outlines, sitemap
#     generators) treat the implicit-body region differently
#     from explicit-body: nodes attached to "implicit body"
#     don't surface in the outline tree.
#   - Tauri v2 webview occasionally treats implicit-body pages
#     as iframe-content and applies a different CSP scope.
#
# Test grep-checks for `<body` (allowing attributes:
# `<body class="..."`, `<body id="...">`, etc.). Pass = at least
# one match per file. Fail = any file missing it.
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
    if ! grep -qiE '<body[[:space:]>]' "$p" 2>/dev/null; then
        echo "FAIL  $p: missing <body> tag"
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
echo "Summary: $checked docs/*.html files checked, $flagged without <body>"

[[ $ok -eq 1 ]] && exit 0 || exit 1
