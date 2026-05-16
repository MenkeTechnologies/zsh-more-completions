#compdef myWatchMaintainEscapes.sh
# Documentation: https://man.archlinux.org/search?q=myWatchMaintainEscapes.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-h[help]'
  '-d[date]'
  '-l[limit output to certain number of lines]'
  '*:filename:_files'
)

_arguments -s -S $arguments
