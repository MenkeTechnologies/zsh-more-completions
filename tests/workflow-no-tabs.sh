#!/usr/bin/env bash
# For this repo's .github/workflows/*.yml files, pin that no file
# uses tab characters for indentation.
#
# YAML 1.2 spec forbids tabs as indentation entirely:
#
#   "The indentation of a block scalar must not include tab
#    characters."
#
# Real-world YAML parsers (PyYAML, js-yaml, GitHub Actions'
# parser) all reject tabs with a hard parse error:
#
#   yaml.scanner.ScannerError: found character '\\t' that cannot
#   start any token
#
# A workflow file with tab indentation:
#   - Silently dies before the first job runs. CI surfaces a
#     "Could not parse the workflow" error in the Actions UI
#     but doesn't trigger the workflow at all — so notifications
#     for "build failed" don't fire either. Pure silent failure.
#   - Some editors auto-insert tabs on TAB keypress when YAML
#     file detection is off (cursor logic shift, scrolling
#     between files). A single accidental tab kills the file.
#   - Editors that "smart" auto-indent inside heredoc strings
#     can introduce tabs into a YAML even when the file is
#     opened as YAML.
#
# Test scans for the literal `\\t` (tab character) anywhere in
# the file. Pass = zero matches. Fail = any line with a tab.
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
    # Use grep -P for portable \t matching; fall back to literal tab
    # via $'\t' inside double-bracketed BRE.
    if grep -qP '\t' "$p" 2>/dev/null || grep -q $'\t' "$p"; then
        bad=$(grep -cP '\t' "$p" 2>/dev/null)
        bad=${bad:-$(grep -c $'\t' "$p")}
        echo "FAIL  $p: $bad line(s) contain tab character(s) — YAML 1.2 forbids tab indentation"
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
echo "Summary: $checked workflow yaml files checked, $flagged with tabs"

[[ $ok -eq 1 ]] && exit 0 || exit 1
