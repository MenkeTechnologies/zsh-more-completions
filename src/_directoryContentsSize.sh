#compdef directoryContentsSize.sh

local arguments

arguments=(
  '-h[help]'
  '-s[]'
  '-a[hidden files]'
  '*:filename:_files'
)

_arguments -s $arguments
