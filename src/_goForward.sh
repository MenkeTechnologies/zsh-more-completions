#compdef goForward.sh
# Documentation: https://man.archlinux.org/search?q=goForward.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-L[force symbolic links to be followed]'
  '-P[use the physical directory structure without following symbolic links]'
  '*:filename:_files'
)

_arguments -s -S $arguments
