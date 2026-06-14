#compdef mavlogdump.py
# Documentation: https://ardupilot.org/dev/docs/mavlink-pymavlink.html
# Source: ArduPilot/pymavlink tools/mavlogdump.py — dump MAVLink/ArduPilot log files.
# Reference accessed: 2026-06-10

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -s \
    '--no-timestamps[log does not have timestamps]' \
    '--planner[use planner file format]' \
    '--robust[robust parsing (skip bad data)]' \
    '(-f --follow)'{-f,--follow}'[wait for more data at EOF]' \
    '--condition=[select packets by condition]:expr:_default' \
    '(-q --quiet)'{-q,--quiet}'[do not display packets]' \
    '(-o --output)'{-o+,--output=}'[write matching packets to file]:file:_files' \
    '(-p --parms)'{-p,--parms}'[preserve parameters in output]' \
    '--format=[output format]:format:(standard json csv mat)' \
    '--csv_sep=[CSV delimiter]:sep:_default' \
    '--types=[message types to include (csv with wildcard)]:types:_default' \
    '--nottypes=[message types to exclude]:types:_default' \
    '--mat_file=[MATLAB output file path]:file:_files' \
    '(-c --compress)'{-c,--compress}'[compress .mat file data]' \
    '--dialect=[MAVLink dialect]:dialect:_default' \
    '--zero-time-base[use Z time base for DF logs]' \
    '--no-bad-data[do not output corrupted messages]' \
    '--show-source[show source system and component IDs]' \
    '--show-seq[show sequence numbers]' \
    '--show-types[show all message types in log]' \
    '--show-loss[show changes in lost messages]' \
    '--source-system=[filter by source system ID]:id:_default' \
    '--source-component=[filter by source component ID]:id:_default' \
    '--link=[filter by comms link ID]:id:_default' \
    '--verbose[verbose dump (non-parseable)]' \
    '--mav10[parse as MAVLink 1]' \
    '--reduce[reduce streaming messages]' \
    '--reduce-rate=[max rate (Hz) to reduce to]:hz:_default' \
    '--profile[run Yappi python profiler]' \
    '--meta[output meta-data msgs even if not matching]' \
    '*:log file:_files -g "*.(tlog|bin|log|BIN|TLOG|LOG)(-.)"' \
    && ret=0

return ret
