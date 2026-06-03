#!/usr/bin/env bash
# For this repo's README.md (at the repo root), pin that the file
# ends with a final newline byte.
#
# POSIX defines a "line" as terminated by `\n`. A README without a
# final newline:
#   - Displays `\ No newline at end of file` in every git diff,
#     making every edit appear as a 2-line replacement of the
#     last line instead of a clean single-line change.
#   - Breaks `cat README*.md > combined.md` build flows — the
#     last line of one runs directly into the first line of the
#     next with no separator.
#   - Undercounts the final line in `wc -l README.md`.
#   - Triggers `markdownlint` MD047 "files-should-end-with-a-single-newline-character".
#
# Test reads the last byte of README.md with `tail -c1` and matches
# against `\n`.
set -uo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root" || exit
ok=1

if [[ ! -f README.md ]]; then
    echo "SKIP  no README.md at repo root"
    exit 0
fi

last=$(tail -c1 README.md 2>/dev/null | od -An -c | tr -d ' ')
if [[ "$last" != '\n' ]]; then
    echo "FAIL  README.md does not end with a newline (last byte: '$last')"
    ok=0
fi

echo "---"
if [[ $ok -eq 1 ]]; then
    echo "Summary: README.md ends with newline"
    exit 0
else
    echo "Summary: README.md is missing final newline"
    exit 1
fi
