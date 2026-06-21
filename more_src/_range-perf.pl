#compdef range-perf.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Extract a time range from perf script output

local ret=1

_arguments -s -S \
  '--timeraw[use raw timestamps instead of normalized]' \
  '--timezerosecs[start time at 0 seconds keeping offset]' \
  ':min seconds:' \
  ':max seconds:' \
  '*:perf script output:_files' && ret=0

return ret
