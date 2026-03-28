#compdef mywatch.sh

local -a arguments

arguments=(
  '-h[help]'
  '-d[date]'
  '*:filename:_files'
)

_arguments -s -S $arguments
