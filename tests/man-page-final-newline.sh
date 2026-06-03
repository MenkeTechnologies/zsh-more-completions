#!/usr/bin/env bash
# For every man page tracked in git across the umbrella, pin that
# the file ends with a final newline character.
#
# POSIX defines a "line" as a sequence of characters terminated by a
# newline. A text file without a trailing newline has a trailing
# "incomplete line", which causes:
#   - `cat file1 file2` runs the last line of file1 directly into
#     the first line of file2 with no separator. For man pages
#     this matters when a build script concatenates section files.
#   - `git diff` displays a `\ No newline at end of file` marker
#     and every edit shows as a 2-line replacement of the last
#     line (drop+re-add) instead of a clean single-line change.
#   - `wc -l file` undercounts the final line by 1, breaking
#     line-count assertions in repo audit gates.
#   - Some renderers (older `groff -man`) emit a warning about a
#     "missing newline before end-of-file" that surfaces as CI
#     noise when warnings are turned to errors.
#
# Test reads the last byte of each tracked `.1` file with
# `tail -c1`. Pass = byte equals `\n`. Fail = anything else
# (including empty file, which can't end in newline).
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
    last_byte=$(tail -c1 "$p" 2>/dev/null | od -An -c | tr -d ' ')
    # od -c renders newline as `\n`. Match exactly.
    if [[ "$last_byte" != '\n' ]]; then
        echo "FAIL  $p: file does not end with a newline (last byte: '$last_byte')"
        flagged=$((flagged + 1))
        files_with_issues+=("$p")
        ok=0
    fi
done < <(find . -path './.git' -prune -o -path '*/target' -prune -o -type f -name '*.1' -path '*/man/man1/*' -print 2>/dev/null)

echo "---"
echo "Summary: $checked man pages checked, $flagged without final newline"

[[ $ok -eq 1 ]] && exit 0 || exit 1
