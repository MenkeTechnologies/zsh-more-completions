#compdef ibfindnodesusing.pl

local arguments

arguments=(
    '-R[Specify ibnetdiscover information file]:file:_files'
    '-C[Use selected Channel Adaptor name for queries]:ca_name'
    '-P[Use selected channel adaptor port for queries]:port'
    '*:filename:_files'
)
_arguments -s $arguments
