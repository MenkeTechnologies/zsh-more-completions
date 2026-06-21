#compdef difffolded.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Generate differential folded stacks from two folded profiles

local ret=1

_arguments -s -S \
  '(- *)-h[show help]' \
  '-n[normalize sample counts between the two files]' \
  '-s[strip hex addresses (0x... )]' \
  ':folded profile 1:_files' \
  ':folded profile 2:_files' && ret=0

return ret
