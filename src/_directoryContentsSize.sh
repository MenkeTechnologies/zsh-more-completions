#compdef directoryContentsSize.sh
# Documentation: https://man.archlinux.org/search?q=directoryContentsSize.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-h[help]'
  '-s[sort by size]'
  '-a[hidden files]'
  '*:filename:_files'
)

_arguments -s -S $arguments
