#compdef mavgraph.py
# Documentation: https://ardupilot.org/dev/docs/mavlink-pymavlink.html
# Source: ArduPilot/pymavlink tools/mavgraph.py — plot graphs from MAVLink logs.
# Reference accessed: 2026-06-10

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -s \
    '--no-timestamps[log does not have timestamps]' \
    '--planner[use planner file format]' \
    '--condition=[select packets by condition]:expr:_default' \
    '--labels=[comma-separated field labels]:labels:_default' \
    '--legend=[legend position]:position:_default' \
    '--legend2=[legend2 position]:position:_default' \
    '--marker=[point marker]:marker:_default' \
    '--linestyle=[line style]:style:_default' \
    '--xaxis=[X axis expression]:expr:_default' \
    '--multi[multiple files with same colors]' \
    '--zero-time-base[use Z time base for DF logs]' \
    '--flightmode=[plot background by flight mode]:stack:(apm px4)' \
    '--dialect=[MAVLink dialect]:dialect:_default' \
    '--output=[output format]:format:_default' \
    '--timeshift=[shift time on first graph (s)]:seconds:_default' \
    '*:log or field:_files -g "*.(tlog|bin|log|BIN|TLOG|LOG)(-.)"' \
    && ret=0

return ret
