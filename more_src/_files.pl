#compdef files.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Emit filesystem usage in folded format for flamegraph.pl

local ret=1

_arguments -s -S \
  '(- *)'{-h,--help}'[show help]' \
  '--xdev[do not descend into other filesystems]' \
  '*:directory:_files -/' && ret=0

return ret
