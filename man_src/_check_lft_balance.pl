#compdef check_lft_balance.pl
# Documentation: https://man.archlinux.org/search?q=check_lft_balance.pl
# Reference accessed: 2026-05-16

local arguments

arguments=(
    '-e[Enable heuristics to look at switch balances deeper]'
    '-v[Verbose output, output all switches]'
    '*:filename:_files'
)
_arguments -s $arguments
