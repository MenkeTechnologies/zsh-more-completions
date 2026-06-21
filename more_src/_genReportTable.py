#compdef genReportTable.py
# Documentation: https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts
# OpenROAD-flow-scripts — generate a report table for a flow variant

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--variant=[flow variant (default: base)]:variant:' && ret=0

return ret
