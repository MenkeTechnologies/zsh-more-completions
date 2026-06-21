#compdef stackcollapse-recursive.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Collapse direct recursion in folded stacks

local ret=1

_arguments -s -S \
  '*:folded stacks:_files' && ret=0

return ret
