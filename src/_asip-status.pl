#compdef asip-status.pl

local arguments

arguments=(
  '-d[Enable debug output.]'
  '-i[Show icon if it exists.]'
  '-x[Enable hex dump output.]'
  {-v,-version,--version}'[Show version.]'
  '*:filename:_files'
)

_arguments -s $arguments
