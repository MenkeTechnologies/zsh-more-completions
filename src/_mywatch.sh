#compdef mywatch.sh

local arguments

arguments=(
  '-h[help]'
  '-d[date]'
  '*:filename:_files'
)

_arguments -s $arguments
