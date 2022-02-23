#compdef check_lft_balance.pl

local arguments

arguments=(
  '-e[on heuristic(s) to look at switch balances deeper]'
  '-v[output, output all switches]'
  '*:filename:_files'
)

_arguments -s $arguments
