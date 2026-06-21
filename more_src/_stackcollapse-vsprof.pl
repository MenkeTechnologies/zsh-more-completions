#compdef stackcollapse-vsprof.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Collapse Visual Studio profiler CSV into single lines for flamegraph.pl

local ret=1

_arguments -s -S \
  '*:vsprof csv:_files' && ret=0

return ret
