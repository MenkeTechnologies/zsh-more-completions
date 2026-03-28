#compdef myWatchMaintainEscapes.sh

local -a arguments

arguments=(
  '-h[help]'
  '-d[date]'
  '-l[limit output to certain number of lines]'
  '*:filename:_files'
)

_arguments -s -S $arguments
