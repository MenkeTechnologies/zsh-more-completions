#!/usr/bin/env bash
# For every docs/*.html across the umbrella, pin that no obsolete
# HTML4 / pre-HTML5 tags are present.
#
# These tags were removed in HTML5 (or marked obsolete in HTML5.1)
# and have no defined rendering in the modern web platform. Each
# one's failure mode:
#
#   - `<center>` — Layout via presentation. Replaced by CSS
#     `text-align: center` or `margin: 0 auto`. Removed from
#     HTML5; modern browsers still render it but spec'd as a
#     "non-conforming" feature subject to future removal.
#   - `<font>` — Inline color/size/face. Replaced by CSS. Same
#     deprecation path as `<center>`.
#   - `<marquee>` — Animated scrolling text. Was never in any
#     HTML spec; vendor-specific from IE/Netscape era. Removed
#     from rendering in some mobile browsers; jarring + ableist
#     (vestibular-disorder trigger).
#   - `<blink>` — Animated blink. Removed from all major browsers
#     after Firefox 23 dropped support in 2013. Pure no-op now.
#   - `<strike>`, `<s>` (HTML 4 variant), `<tt>`, `<big>` —
#     Presentational text decoration; replaced by `<del>` /
#     CSS `text-decoration` / `font-family` / `font-size`.
#   - `<frame>` / `<frameset>` / `<noframes>` — The 90s-era
#     multi-document layout primitive. Removed in HTML5; modern
#     web is `<iframe>` (different semantics + security model).
#   - `<applet>` — Java applet embed. Browsers dropped Java plugin
#     support in 2017-2018; `<applet>` is a dead tag now.
#
# Allowlist: rustdoc-generated trees. Rustdoc historically emitted
# `<tt>` for code refs; recent rustdoc versions use `<code>` but
# old-cached `docs/target/doc/` trees may still surface the legacy
# form. The rustdoc team owns the fix.
#
# Test grep-checks for the canonical opener of each tag (case-
# insensitive). Pass = zero matches. Fail = any tag found.
set -uo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root" || exit
ok=1

# Canonical opener regex for the obsolete tag set.
deprecated_re='<(center|font|marquee|blink|strike|tt|big|frame|frameset|noframes|applet)\b'

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

    bad=$(grep -ciE "$deprecated_re" "$doc" 2>/dev/null)
    bad=${bad:-0}
    if [[ "$bad" -gt 0 ]]; then
        # Show which tags appear, for debugging.
        tags=$(grep -oiE "$deprecated_re" "$doc" 2>/dev/null | sort -u | tr '\n' ' ')
        echo "FAIL  $doc: $bad obsolete tag occurrence(s) — found: $tags"
        flagged=$((flagged + bad))
        files_with_issues+=("$doc")
        ok=0
    fi
done < <(find . -path './.git' -prune -o -path '*/target' -prune -o -type f -path '*/docs/*.html' -print 2>/dev/null)

echo "---"
echo "Summary: $checked docs/*.html files checked, $allowlisted allowlisted (rustdoc), $flagged obsolete tag occurrences across ${#files_with_issues[@]} file(s)"

[[ $ok -eq 1 ]] && exit 0 || exit 1
