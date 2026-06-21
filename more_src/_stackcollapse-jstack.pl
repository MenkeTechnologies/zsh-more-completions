#compdef stackcollapse-jstack.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Collapse jstack(1) output into single lines for flamegraph.pl

local ret=1

_arguments -s -S \
  '(- *)--help[show help]' \
  '--include-tname[include thread names in stacks]' \
  '--no-include-tname[exclude thread names from stacks]' \
  '--include-tid[include thread IDs in stacks]' \
  '--no-include-tid[exclude thread IDs from stacks]' \
  '--shorten-pkgs[shorten package names]' \
  '--no-shorten-pkgs[do not shorten package names]' \
  '*:jstack output:_files' && ret=0

return ret
