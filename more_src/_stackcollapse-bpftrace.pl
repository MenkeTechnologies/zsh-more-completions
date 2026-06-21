#compdef stackcollapse-bpftrace.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Collapse bpftrace stack output into single lines for flamegraph.pl

local ret=1

_arguments -s -S \
  '*:bpftrace output:_files' && ret=0

return ret
