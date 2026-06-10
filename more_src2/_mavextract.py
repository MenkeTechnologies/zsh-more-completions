#compdef mavextract.py
# Documentation: https://ardupilot.org/dev/docs/mavlink-pymavlink.html
# Source: ArduPilot/pymavlink tools/mavextract.py — extract segments from MAVLink logs.
# Reference accessed: 2026-06-10

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -s \
    '--no-timestamps[log does not have timestamps]' \
    '--robust[robust parsing (skip bad data)]' \
    '--condition=[select packets by condition]:expr:_default' \
    '--mode=[mode to extract]:mode:_default' \
    '--link=[extract specific comms link ID]:id:_default' \
    '*:log file:_files -g "*.(tlog|bin|log|BIN|TLOG|LOG)(-.)"' \
    && ret=0

return ret
