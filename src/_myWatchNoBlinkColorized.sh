#compdef myWatchNoBlinkColorized.sh
# Documentation: https://man.archlinux.org/search?q=myWatchNoBlinkColorized.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-h[show help]'
  '-b[bold]'
  '*:filename:_files'
)

_arguments -s -S $arguments
