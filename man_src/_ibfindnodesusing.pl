#compdef ibfindnodesusing.pl

local arguments

arguments=(
  '-R[ibnetdiscover information]'
  '-C[use selected Channel Adaptor name for queries]'
  '-P[use selected channel adaptor port for queries]'
  '*:filename:_files'
)

_arguments -s $arguments
