#compdef ibidsverify.pl

local arguments

arguments=(
  '-h[help message]'
  '-R[ibnetdiscover information (Default is to reuse ibnetdiscover output)]'
  '-C[use selected Channel Adaptor name for queries]'
  '-P[use selected channel adaptor port for queries]'
  '*:filename:_files'
)

_arguments -s $arguments
