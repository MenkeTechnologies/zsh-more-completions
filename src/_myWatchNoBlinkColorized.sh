#compdef myWatchNoBlinkColorized.sh

local -a arguments

arguments=(
  '-h[]'
  '-b[bold]'
  '*:filename:_files'
)

_arguments -s -S $arguments
