#!/usr/bin/env bash
# For every docs/*.html across the umbrella (meta repo + submodules),
# pin that every external `href`/`src` URL is https://, not http://.
#
# `http://` in a documentation page is a slow rot:
#   - Mixed-content blocking: a page loaded over https:// has its
#     `<script src="http://...">` and `<img src="http://...">`
#     silently stripped by every modern browser. The doc renders
#     wrong; the cause is invisible without devtools open.
#   - Active downgrade exposure: even passive http:// references
#     (an `<a href>` link) expose the user's referrer + browsing
#     habit to any on-path observer (coffee-shop wifi, corporate
#     proxies, ISP injection).
#   - GitHub Pages hosting is https-only — every http:// reference
#     here is either a mistake or a still-rusty link that's
#     long-since been migrated upstream.
#
# Local-development URLs (http://localhost / http://127.0.0.1 /
# http://0.0.0.0 / http://[::1]) are exempt — those are inside
# example code blocks documenting "run this locally first" flows.
#
# Test scans every `href="http://..."` and `src="http://..."` in
# docs/*.html. Pass = zero non-local http:// URLs found. Fail =
# any external http:// reference flagged with the file + URL.
set -uo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root" || exit
ok=1

checked=0
flagged=0
files_with_issues=()

# Patterns: http:// followed by anything that ISN'T localhost-equivalent.
# We grep for the bare prefix and post-filter, rather than try to bake
# the negative-lookahead into a single regex.
local_re='^(localhost|127\.0\.0\.1|0\.0\.0\.0|\[::1\])(:|/|$)'

while IFS= read -r doc; do
    [[ -f "$doc" ]] || continue
    checked=$((checked + 1))

    # Pull every URL whose attribute is href= or src= and value starts
    # with http://. Strip the surrounding `(href|src)="http://` so we
    # can host-match against $local_re.
    bad=0
    while IFS= read -r url; do
        [[ -z "$url" ]] && continue
        if [[ ! "$url" =~ $local_re ]]; then
            bad=$((bad + 1))
        fi
    done < <(
        grep -oE '(href|src)="http://[^"]+' "$doc" 2>/dev/null \
            | sed -E 's/^(href|src)="http:\/\///'
    )

    if [[ "$bad" -gt 0 ]]; then
        echo "FAIL  $doc: $bad non-local http:// URL(s)"
        flagged=$((flagged + bad))
        files_with_issues+=("$doc")
        ok=0
    fi
done < <(find . -path './.git' -prune -o -type f -path '*/docs/*.html' -print 2>/dev/null)

echo "---"
echo "Summary: $checked docs/*.html files checked, $flagged non-local http:// URLs across ${#files_with_issues[@]} file(s)"

[[ $ok -eq 1 ]] && exit 0 || exit 1
