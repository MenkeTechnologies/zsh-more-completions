#compdef uub
# Documentation: none found
# Reference accessed: 2026-05-21
# Verified: upstream docs at the URL above.
# STUB: No authoritative upstream docs for a command named `uub`
# could be located. The previous completion was sourced from
# ray-kast/zrc (a personal dotfiles repo), which is not an upstream
# spec. Block-device argument inference cannot be verified.

local curcontext="$curcontext" state line ret=1
_arguments -s -S '*:file:_files' && ret=0
return ret
