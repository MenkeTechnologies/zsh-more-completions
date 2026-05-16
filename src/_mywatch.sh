#compdef mywatch.sh
# Documentation: https://man.archlinux.org/search?q=mywatch.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-h[help]'
  '-d[date]'
  '*:filename:_files'
)

_arguments -s -S $arguments
