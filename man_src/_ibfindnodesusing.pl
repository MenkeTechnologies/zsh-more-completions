#compdef ibfindnodesusing.pl
# Documentation: https://man.archlinux.org/search?q=ibfindnodesusing.pl
# Reference accessed: 2026-05-16

local arguments

arguments=(
    '-R[Specify ibnetdiscover information file]:file:_files'
    '-C[Use selected Channel Adaptor name for queries]:ca_name'
    '-P[Use selected channel adaptor port for queries]:port'
    '*:filename:_files'
)
_arguments -s $arguments
