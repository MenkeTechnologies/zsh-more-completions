#compdef genReport.py
# Documentation: https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts
# OpenROAD-flow-scripts — generate a DRC/error report from flow logs

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-v --verbose)'{-v,--verbose}'[verbosity level (repeatable)]' \
  '(-q --quiet)'{-q,--quiet}'[do not print report to stdout]' \
  '(-s --summary)'{-s,--summary}'[only write summary file]' && ret=0

return ret
