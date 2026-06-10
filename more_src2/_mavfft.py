#compdef mavfft.py
# Documentation: https://ardupilot.org/dev/docs/mavlink-pymavlink.html
# Source: ArduPilot/pymavlink tools/mavfft.py — FFT analysis of accel/gyro data in MAVLink logs.
# Reference accessed: 2026-06-10

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -s \
    '--condition=[select packets by condition]:expr:_default' \
    '--sample-length=[number of samples per FFT (0=all)]:n:_default' \
    '*:log file:_files -g "*.(tlog|bin|log|BIN|TLOG|LOG)(-.)"' \
    && ret=0

return ret
