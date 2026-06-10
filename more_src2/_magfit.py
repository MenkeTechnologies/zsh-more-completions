#compdef magfit.py
# Documentation: https://ardupilot.org/dev/docs/mavlink-pymavlink.html
# Source: ArduPilot/pymavlink tools/magfit.py — fit magnetometer offsets to a sphere model.
# Reference accessed: 2026-06-10

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -s \
    '--no-timestamps[log does not have timestamps]' \
    '--condition=[select packets by condition]:expr:_default' \
    '--noise=[Gaussian noise to add (default 0)]:noise:_default' \
    '--mag2[use 2nd mag from DF log]' \
    '--radius=[fixed target sphere radius]:radius:_default' \
    '--plot[plot points in 3D]' \
    '*:log file:_files -g "*.(tlog|bin|log|BIN|TLOG|LOG)(-.)"' \
    && ret=0

return ret
