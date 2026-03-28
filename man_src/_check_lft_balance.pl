#compdef check_lft_balance.pl

local arguments

arguments=(
    '-e[Enable heuristics to look at switch balances deeper]'
    '-v[Verbose output, output all switches]'
    '*:filename:_files'
)
_arguments -s $arguments
