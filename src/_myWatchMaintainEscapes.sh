#compdef myWatchMaintainEscapes.sh

local arguments

arguments=(
  '-h[help]'
  '-d[date]'
  '-l[limit output to certain number of lines]'
  '*:filename:_files'
)

_arguments -s $arguments
