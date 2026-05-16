#compdef storageShower.sh
# Documentation: https://man.archlinux.org/search?q=storageShower.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-h[display this message]'
  '-v[display script version]'
  '*:filename:_files'
)

_arguments -s -S $arguments
