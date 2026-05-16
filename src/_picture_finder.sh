#compdef picture_finder.sh
# Documentation: https://man.archlinux.org/search?q=picture_finder.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-m[mode]'
  '-p[no error if exists; make parent directories as needed]'
  '*:filename:_files'
)

_arguments -s -S $arguments
