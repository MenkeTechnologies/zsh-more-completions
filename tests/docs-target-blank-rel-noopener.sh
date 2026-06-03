#!/usr/bin/env bash
# For every docs/*.html across the umbrella (meta repo + submodules),
# pin that any `<a target="_blank">` carries a `rel` attribute whose
# value contains the `noopener` token.
#
# Without `rel="noopener"`, the linked page can read
# `window.opener.location` and silently swap the parent tab to a
# phishing URL — the "tab-nabbing" attack class. Adding `noopener`
# (and the historical companion `noreferrer`) costs nothing and is
# a hard browser-side fix that doesn't depend on the linked site
# being honest. Note: Chrome ≥88 / Firefox ≥79 / Safari ≥12.1
# treat `target=_blank` as implicit `noopener` by default — but
# that floor is not universal (older WebViews, Tauri-bundled
# WebKit on older macOS, in-app browsers in social apps still
# need the explicit attribute), so making it mandatory is the
# safer floor.
#
# Test scans every `<a ... target="_blank" ...>` opener tag (one
# tag per line; multi-line tags are normalized by joining
# continuation lines first). Pass = every such tag's `rel`
# attribute value contains `noopener`. Fail = any such tag is
# missing `rel` entirely OR has `rel` without `noopener`.
set -uo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root" || exit
ok=1

checked=0
flagged=0
files_with_issues=()

while IFS= read -r doc; do
    [[ -f "$doc" ]] || continue
    checked=$((checked + 1))
    # Normalize multi-line <a ...> tags onto one logical line by
    # joining `<a` with the next `>` it meets. Then extract every
    # opener tag containing target="_blank".
    bad=$(
        tr '\n' ' ' < "$doc" \
            | grep -oE '<a[^>]*target="_blank"[^>]*>' \
            | grep -vcE 'rel="[^"]*noopener[^"]*"'
    )
    bad=${bad:-0}
    if [[ "$bad" -gt 0 ]]; then
        echo "FAIL  $doc: $bad <a target=\"_blank\"> tag(s) without rel=\"...noopener...\""
        flagged=$((flagged + bad))
        files_with_issues+=("$doc")
        ok=0
    fi
done < <(find . -path './.git' -prune -o -type f -path '*/docs/*.html' -print 2>/dev/null)

echo "---"
echo "Summary: $checked docs/*.html files checked, $flagged bare target=\"_blank\" tags across ${#files_with_issues[@]} file(s)"

[[ $ok -eq 1 ]] && exit 0 || exit 1
