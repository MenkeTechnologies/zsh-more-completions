#compdef myWatchNoBlink.sh

local -a arguments

arguments=(
  '-h[show help]'
  '-b[bold]'
  '*:filename:_files'
)

_arguments -s -S $arguments
