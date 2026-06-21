#compdef stackcollapse.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Collapse DTrace stack samples into single lines for flamegraph.pl

local ret=1

_arguments -s -S \
  '*:stack samples:_files' && ret=0

return ret
