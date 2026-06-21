#compdef stackcollapse-elfutils.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Collapse elfutils stack output into single lines for flamegraph.pl

local ret=1

_arguments -s -S \
  '--pid[include process ID in stacks]' \
  '--tid[include thread ID in stacks]' \
  '*:elfutils stack output:_files' && ret=0

return ret
