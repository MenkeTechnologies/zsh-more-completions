#compdef mavflighttime.py
# Documentation: https://ardupilot.org/dev/docs/mavlink-pymavlink.html
# Source: ArduPilot/pymavlink tools/mavflighttime.py — sum airborne time from MAVLink logs.
# Reference accessed: 2026-06-10

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -s \
    '--condition=[select packets by condition]:expr:_default' \
    '--groundspeed=[airborne groundspeed threshold (m/s, default 3.0)]:mps:_default' \
    '*:log file:_files -g "*.(tlog|bin|log|BIN|TLOG|LOG)(-.)"' \
    && ret=0

return ret
