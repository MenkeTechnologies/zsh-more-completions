#!/usr/bin/env bash
# For every man page tracked in git across the umbrella, pin that
# the file contains a `.SH SYNOPSIS` section header.
#
# `.SH SYNOPSIS` is one of the four canonical sections that every
# man page in section 1 (user commands) is expected to ship per
# `man-pages(7)` and the Filesystem Hierarchy Standard: NAME,
# SYNOPSIS, DESCRIPTION, and (often) OPTIONS. SYNOPSIS specifically
# is the machine-readable contract: it documents the command's
# argument grammar, which downstream tooling (whatis, apropos,
# completion generators like fish's create_manpage_completions,
# zsh's _man, bash-completion's man-page parser) reads to seed
# completion fixtures. A man page without SYNOPSIS silently breaks
# those tools — they emit nothing for the affected command.
#
# Companion sections (NAME, DESCRIPTION) are already enforced
# elsewhere (tests/man-page-name-format.sh covers .SH NAME). This
# test focuses on SYNOPSIS as the structural floor that's both
# important and historically prone to omission ("I'll add it
# later" man pages that ship without it).
#
# Scope: standard binary man pages (`<name>.1`) only. The
# `<name>all.1` companion ("everything cheatsheet") convention
# established in tests/tier1-man-pages.sh is exempt — those pages
# are structured comprehensive references with their own section
# layout (OVERVIEW + numbered chapters), not the standard
# NAME/SYNOPSIS/DESCRIPTION/OPTIONS man-page(7) layout. The
# completion-generator tooling that consumes SYNOPSIS targets the
# canonical `<name>.1` file, not the `all` variant.
#
# Test scans for the literal `.SH SYNOPSIS` line (case-insensitive,
# optional trailing whitespace). Pass = present. Fail = absent.
set -uo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root" || exit
ok=1

checked=0
flagged=0
files_with_issues=()

while IFS= read -r p; do
    [[ -f "$p" ]] || continue
    # Skip the `<name>all.1` companion variant — see scope notes.
    base=$(basename "$p" .1)
    [[ "$base" == *all ]] && continue
    checked=$((checked + 1))
    if ! grep -qiE '^\.SH[[:space:]]+SYNOPSIS[[:space:]]*$' "$p"; then
        echo "FAIL  $p: missing .SH SYNOPSIS section header"
        flagged=$((flagged + 1))
        files_with_issues+=("$p")
        ok=0
    fi
done < <(find . -path './.git' -prune -o -path '*/target' -prune -o -type f -name '*.1' -path '*/man/man1/*' -print 2>/dev/null)

echo "---"
echo "Summary: $checked man pages checked, $flagged without .SH SYNOPSIS"

[[ $ok -eq 1 ]] && exit 0 || exit 1
