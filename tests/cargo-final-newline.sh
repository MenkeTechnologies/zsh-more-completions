#!/usr/bin/env bash
# For this repo's Cargo.toml files (any depth, excluding target/),
# pin that each file ends with a final newline byte.
#
# Same POSIX text-file convention as README/docs/man-page newline
# gates. A Cargo.toml without final `\n`:
#   - Shows `\ No newline at end of file` in every git diff —
#     every `bp` version bump or dep update looks like a 2-line
#     replacement of the last line.
#   - When `cargo` writes Cargo.toml back during certain commands
#     (`cargo add`, `cargo rm`, automated dep bumps via dependabot/
#     release-please), it always appends a trailing newline. So a
#     repo with no trailing newline gets a "noise" line added the
#     next time tooling touches the file, mixing the trailing-newline
#     add into the actual diff and making review harder.
#   - Trips `taplo fmt --check` (the canonical TOML formatter) and
#     a number of other TOML linters.
#   - Undercounts in `wc -l`.
#
# Test reads the last byte of each `Cargo.toml` via `tail -c1` and
# matches against `\n`. Skips repos without any Cargo.toml.
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
    last=$(tail -c1 "$p" 2>/dev/null | od -An -c | tr -d ' ')
    if [[ "$last" != '\n' ]]; then
        echo "FAIL  $p: file does not end with a newline (last byte: '$last')"
        flagged=$((flagged + 1))
        files_with_issues+=("$p")
        ok=0
    fi
done < <(find . -path './.git' -prune -o -path '*/target' -prune -o -type f -name 'Cargo.toml' -print 2>/dev/null)

if [[ $checked -eq 0 ]]; then
    echo "SKIP  no Cargo.toml files in this repo (non-Rust submodule)"
    exit 0
fi

echo "---"
echo "Summary: $checked Cargo.toml files checked, $flagged without final newline"

[[ $ok -eq 1 ]] && exit 0 || exit 1
