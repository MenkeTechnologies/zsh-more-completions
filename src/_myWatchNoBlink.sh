#compdef myWatchNoBlink.sh

local arguments

arguments=(
  '-h[]'
  '-b[bold]'
  '*:filename:_files'
)

_arguments -s $arguments
