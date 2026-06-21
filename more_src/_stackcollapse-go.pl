#compdef stackcollapse-go.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Collapse Go pprof output into single lines for flamegraph.pl

local ret=1

_arguments -s -S \
  '(- *)--help[show help]' \
  '*:go pprof output:_files' && ret=0

return ret
