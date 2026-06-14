#compdef extract_parms.py
# Documentation: https://ardupilot.org/dev/docs/mavlink-pymavlink.html
# Source: ArduPilot/pymavlink tools/extract_parms.py — extract non-default parameters for publishing.
# Reference accessed: 2026-06-10

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -s \
    '1:defaults file:_files -g "*.(parm|param|txt)(-.)"' \
    '2:params file:_files -g "*.(parm|param|txt)(-.)"' \
    && ret=0

return ret
