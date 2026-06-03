#!/usr/bin/env bash
# For every man page tracked in git across the umbrella (meta + all
# submodules), pin that no line has trailing whitespace.
#
# Trailing whitespace on a man page is invisible in `man <page>`
# output but corrupts roff input in subtle ways:
#   - `.B word ` (trailing space after the operand) becomes a
#     three-arg call to .B, which groff sometimes interprets as
#     "bold-roman-bold" alternation and other times silently
#     drops the implicit second word. Output is renderer-dependent.
#   - Trailing whitespace inside `.SH NAME \- description` after the
#     dash shifts the `whatis`-database parse so that mandb / apropos
#     index the wrong substring.
#   - Patches against these files double-count: hidden whitespace +
#     trailing-newline drift makes every "fix typo" PR show as a
#     20-line diff when only one word changed.
#
# Test scans every `man/man1/*.1` across the umbrella (meta repo
# + initialized submodules), but EXCLUDES build artifacts under
# `*/target/*` (e.g. mp3lame-sys' vendored manpage in strykelang's
# Cargo build directory).
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
    bad=$(grep -cE ' +$' "$p" 2>/dev/null)
    bad=${bad:-0}
    if [[ "$bad" -gt 0 ]]; then
        echo "FAIL  $p: $bad line(s) with trailing whitespace"
        flagged=$((flagged + bad))
        files_with_issues+=("$p")
        ok=0
    fi
done < <(find . -path './.git' -prune -o -path '*/target' -prune -o -type f -name '*.1' -path '*/man/man1/*' -print 2>/dev/null)

echo "---"
echo "Summary: $checked man pages checked, $flagged trailing-whitespace lines across ${#files_with_issues[@]} file(s)"

[[ $ok -eq 1 ]] && exit 0 || exit 1
