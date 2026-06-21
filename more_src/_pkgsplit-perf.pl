#compdef pkgsplit-perf.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Split java/perf package names into hierarchical frames for flamegraph.pl

local ret=1

_arguments -s -S \
  '*:perf script output:_files' && ret=0

return ret
