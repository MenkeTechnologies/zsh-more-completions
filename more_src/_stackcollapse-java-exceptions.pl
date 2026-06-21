#compdef stackcollapse-java-exceptions.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Collapse Java exception stacks into single lines for flamegraph.pl

local ret=1

_arguments -s -S \
  '(- *)--help[show help]' \
  '--shorten-pkgs[shorten package names]' \
  '--no-pkgs[suppress package names entirely]' \
  '*:exception stacks:_files' && ret=0

return ret
