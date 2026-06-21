#compdef stackcollapse-instruments.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Collapse Xcode Instruments output into single lines for flamegraph.pl

local ret=1

_arguments -s -S \
  '*:instruments output:_files' && ret=0

return ret
