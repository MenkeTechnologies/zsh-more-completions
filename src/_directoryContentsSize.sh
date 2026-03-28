#compdef directoryContentsSize.sh

local -a arguments

arguments=(
  '-h[help]'
  '-s[]'
  '-a[hidden files]'
  '*:filename:_files'
)

_arguments -s -S $arguments
