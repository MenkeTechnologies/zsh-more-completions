#!/usr/bin/env bash
# For every tests/*.sh tracked in git across the umbrella, pin that
# the first line is a canonical shebang.
#
# A shell script without a shebang line falls back to one of:
#   - The invoking shell, when run via `bash script.sh` or
#     `sh script.sh`. Works by accident if both shells agree on
#     syntax — breaks silently on `[[ ]]` / `(( ))` / arrays /
#     `local`, all of which are bash-only.
#   - `/bin/sh` on Linux (typically dash) when run as `./script.sh`
#     from a non-bash login shell. Same syntax-incompatibility risk
#     — dash rejects `[[` outright.
#   - The user's `$SHELL` on macOS in some `exec`/`spawn` contexts,
#     which could be zsh, fish, nu, etc. — none of which run bash
#     scripts cleanly.
#
# Canonical shebangs accepted:
#   - `#!/usr/bin/env bash`  (PATH-portable; preferred org standard)
#   - `#!/usr/bin/env sh`    (POSIX-portable; for sh-only scripts)
#   - `#!/bin/bash`          (absolute; works on Linux + macOS)
#   - `#!/bin/sh`            (absolute POSIX; works everywhere)
#
# Anything else (no shebang, `#!/usr/bin/python`, `#!zsh`, `#!`
# alone) is flagged. The point isn't to homogenize on bash —
# scripts can legitimately be sh-only — but to make the interpreter
# explicit so the script behavior is deterministic regardless of
# invocation context.
#
# Test reads the first byte of each tests/*.sh and matches against
# the accepted shebang set.
set -uo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root" || exit
ok=1

shebang_re='^#!(/usr/bin/env[[:space:]]+(bash|sh)|/bin/(bash|sh))([[:space:]]|$)'

checked=0
flagged=0
files_with_issues=()

while IFS= read -r p; do
    [[ -f "$p" ]] || continue
    [[ "$p" == *.sh ]] || continue
    # Restrict to */tests/ and ./tests/ paths only.
    [[ "$p" =~ ^[^/]*/tests/ || "$p" =~ ^tests/ ]] || continue
    checked=$((checked + 1))
    first=$(head -1 "$p")
    if ! [[ "$first" =~ $shebang_re ]]; then
        # Truncate noisy first lines for readable output.
        snippet="${first:0:60}"
        echo "FAIL  $p: non-canonical shebang (got: '$snippet')"
        flagged=$((flagged + 1))
        files_with_issues+=("$p")
        ok=0
    fi
done < <(git ls-files 2>/dev/null)

echo "---"
echo "Summary: $checked tests/*.sh scripts checked, $flagged with non-canonical shebang"

[[ $ok -eq 1 ]] && exit 0 || exit 1
