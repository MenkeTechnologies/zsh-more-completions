#!/usr/bin/env bash
# For every docs/*.html across the umbrella (meta repo + submodules),
# pin that no element carries an inline DOM event-handler attribute
# (onclick, onchange, oninput, onkeydown, onload, ...).
#
# Inline handlers are unfit for two reasons:
#
# 1. Tauri v2 release CSP. Tauri's default Content-Security-Policy
#    in release builds is `script-src 'self'` — no `unsafe-inline`.
#    Inline handlers (`onclick="..."`) are equivalent to inline
#    `<script>` blocks under CSP and are silently dropped at parse
#    time. A button that "works in dev" but "doesn't fire in release"
#    is the canonical Tauri-v2-CSP failure mode. Several MenkeTech
#    Tauri apps (Audio-Haxor, traderview) compile their docs into
#    bundled assets — inline handlers there poison the release
#    build path.
#
# 2. Future GitHub Pages CSP. GitHub Pages currently allows inline
#    JS, but the platform has signaled intent to tighten via a
#    site-level CSP header. Pinning the "no inline handlers" floor
#    NOW means a future CSP rollout doesn't break every doc page.
#
# Allowlist:
#
#   - `<meta name="generator" content="rustdoc">` — Rustdoc emits
#     `onclick="history.back();"` on its help/settings pages and
#     similar fixtures. These are tool-generated, not hand-edited,
#     and the upstream rustdoc team owns the fix.
#   - `<!--PORT-REPORT-SCHEMA` — zshrs `docs/port_report.html` is
#     a hand-rolled report generator with interactive filtering
#     UI; the inline `oninput=ff()` / `onchange=ff()` pattern is
#     load-bearing and the file is overwritten by every
#     `scripts/gen_port_report.py` run.
#
# Test scans every docs/*.html for the DOM event-handler attribute
# pattern. Pass = zero non-allowlisted matches.
set -uo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root" || exit
ok=1

# Canonical browser DOM event-handler attribute names. This is the
# common subset; the full list is ~150 events, but these 15 cover
# every observed real-world use and every Tauri-CSP-blocking case.
handler_re='\bon(click|change|input|submit|load|unload|mouseover|mouseout|mouseenter|mouseleave|keydown|keyup|keypress|focus|blur)='

checked=0
allowlisted=0
flagged=0
files_with_issues=()

while IFS= read -r doc; do
    [[ -f "$doc" ]] || continue
    checked=$((checked + 1))

    # Allowlist filters: rustdoc-generated + zshrs port_report.
    if grep -qE '<meta[^>]+name="generator"[^>]+content="rustdoc"' "$doc" 2>/dev/null; then
        allowlisted=$((allowlisted + 1))
        continue
    fi
    if grep -qE '^<!--PORT-REPORT-SCHEMA' "$doc" 2>/dev/null; then
        allowlisted=$((allowlisted + 1))
        continue
    fi

    bad=$(grep -cE "$handler_re" "$doc" 2>/dev/null)
    bad=${bad:-0}
    if [[ "$bad" -gt 0 ]]; then
        echo "FAIL  $doc: $bad inline DOM event-handler attribute(s) — Tauri CSP-incompatible"
        flagged=$((flagged + bad))
        files_with_issues+=("$doc")
        ok=0
    fi
done < <(find . -path './.git' -prune -o -type f -path '*/docs/*.html' -print 2>/dev/null)

echo "---"
echo "Summary: $checked docs/*.html files checked, $allowlisted allowlisted (rustdoc / port_report), $flagged inline-handler tags across ${#files_with_issues[@]} file(s)"

[[ $ok -eq 1 ]] && exit 0 || exit 1
