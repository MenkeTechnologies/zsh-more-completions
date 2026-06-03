#!/usr/bin/env bash
# For every docs/*.html across the umbrella, pin that no `<a>` tag
# uses a placeholder href value (`href="#"` or
# `href="javascript:..."`).
#
# Placeholder href is a perennial copy-paste artifact from
# wireframe HTML or scaffolded snippets:
#
#   - `href="#"` — Renders as a navigable link, but clicking
#     scrolls to top-of-page and adds a `#` to the URL bar
#     (history pollution). Screen readers announce it as a real
#     link, sending users to a no-op destination. The honest
#     "this is a button" markup is `<button>`, not `<a href="#">`.
#   - `href="javascript:..."` — Inline JS via the `javascript:`
#     URL scheme. Blocked by Content-Security-Policy (modern
#     Tauri + GitHub Pages CSP both reject this). Even when
#     allowed, it leaks JS into the URL bar (history) and breaks
#     middle-click-open-in-new-tab (the JS runs in the wrong
#     context). Replacement: bind an event listener in a
#     separate `<script>` block.
#
# Allowlist: rustdoc-generated trees. Rustdoc's `help.html`,
# `settings.html`, and various nav fixtures emit
# `<a id="back" href="javascript:void(0)" onclick="history.back();">`
# and similar — the rustdoc team owns the migration.
#
# Test scans for the literal `href="#"` and `href="javascript:`
# patterns. Pass = zero non-allowlisted matches.
set -uo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root" || exit
ok=1

placeholder_re='href="(#"|javascript:)'

checked=0
allowlisted=0
flagged=0
files_with_issues=()

while IFS= read -r doc; do
    [[ -f "$doc" ]] || continue
    checked=$((checked + 1))

    if grep -qE '<meta[^>]+name="generator"[^>]+content="rustdoc"' "$doc" 2>/dev/null; then
        allowlisted=$((allowlisted + 1))
        continue
    fi

    bad=$(grep -cE "$placeholder_re" "$doc" 2>/dev/null)
    bad=${bad:-0}
    if [[ "$bad" -gt 0 ]]; then
        echo "FAIL  $doc: $bad placeholder href value(s) (href=\"#\" or href=\"javascript:...\")"
        flagged=$((flagged + bad))
        files_with_issues+=("$doc")
        ok=0
    fi
done < <(find . -path './.git' -prune -o -path '*/target' -prune -o -type f -path '*/docs/*.html' -print 2>/dev/null)

echo "---"
echo "Summary: $checked docs/*.html files checked, $allowlisted allowlisted (rustdoc), $flagged placeholder hrefs across ${#files_with_issues[@]} file(s)"

[[ $ok -eq 1 ]] && exit 0 || exit 1
