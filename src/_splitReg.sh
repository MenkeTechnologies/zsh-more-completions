#compdef splitReg.sh
# Documentation: https://man.archlinux.org/search?q=splitReg.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-i[|inverse set filter to after regex]'
  '-h[|help Display this message]'
  '-v[|version Display script version\[0m]'
  '*:filename:_files'
)

_arguments -s -S $arguments
