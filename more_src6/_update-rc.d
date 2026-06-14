#compdef update-rc.d
# Documentation: https://manpages.debian.org/update-rc.d
# Source: u-root/u-root cmds/core/update-rc.d — install and remove System-V init script links (Go).
# Reference accessed: 2026-06-10

local curcontext="$curcontext" state line ret=1

_arguments -s -C \
    '-f[force removal of symlinks even if /etc/init.d/SCRIPT still exists]' \
    '1:script:_files -W /etc/init.d -g "*"' \
    '2:action:(defaults defaults-disabled disable enable remove start stop)' \
    '*::runlevels:(S 0 1 2 3 4 5 6)' \
    && ret=0

return ret
