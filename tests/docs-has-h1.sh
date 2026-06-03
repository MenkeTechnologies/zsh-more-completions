#!/usr/bin/env bash
# For every docs/*.html across the umbrella (meta + submodules),
# pin that the document contains at least one `<h1>` element.
#
# `<h1>` is the document's top-level heading. It is:
#
#   - **Required by the HTML5 outline algorithm** for a meaningful
#     document outline. Documents without h1 are flagged by HTML5
#     conformance checkers (validator.w3.org) and Lighthouse
#     accessibility audits ("Document does not have a main
#     landmark").
#   - **A screen-reader landmark.** NVDA/JAWS/VoiceOver users
#     navigate documents by heading hierarchy (`h` key in NVDA).
#     A page with no h1 has no obvious top-of-content anchor —
#     users hear the same surrounding chrome on every page.
#   - **A search-engine signal.** Google's HTML structured-data
#     guidelines treat h1 as the page's primary topic. Pages
#     without h1 rank worse on long-tail queries because the
#     crawler can't identify the canonical heading.
#
# Allowlist: rustdoc-generated trees (`<meta name="generator"
# content="rustdoc">`). Rustdoc's `help.html` and `settings.html`
# fixtures don't always emit `<h1>`; the rustdoc team owns those
# pages, and the convention is consistent across all crates'
# `target/doc/` output.
#
# Test scans for the literal `<h1` opener (matching `<h1>`,
# `<h1 class="...">`, `<h1 id="...">`, etc.). Pass = at least one
# match. Fail = zero matches.
set -uo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root" || exit
ok=1

checked=0
allowlisted=0
flagged=0
files_with_issues=()

while IFS= read -r doc; do
    [[ -f "$doc" ]] || continue
    checked=$((checked + 1))

    # Allowlist: rustdoc-generated trees.
    if grep -qE '<meta[^>]+name="generator"[^>]+content="rustdoc"' "$doc" 2>/dev/null; then
        allowlisted=$((allowlisted + 1))
        continue
    fi

    if ! grep -qE '<h1\b' "$doc" 2>/dev/null; then
        echo "FAIL  $doc: no <h1> element found"
        flagged=$((flagged + 1))
        files_with_issues+=("$doc")
        ok=0
    fi
done < <(find . -path './.git' -prune -o -path '*/target' -prune -o -type f -path '*/docs/*.html' -print 2>/dev/null)

echo "---"
echo "Summary: $checked docs/*.html files checked, $allowlisted allowlisted (rustdoc), $flagged without <h1>"

[[ $ok -eq 1 ]] && exit 0 || exit 1
