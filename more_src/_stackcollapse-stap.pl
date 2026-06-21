#compdef stackcollapse-stap.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Collapse SystemTap stack output into single lines for flamegraph.pl

local ret=1

_arguments -s -S \
  '*:systemtap output:_files' && ret=0

return ret
