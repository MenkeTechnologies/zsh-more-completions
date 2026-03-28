#compdef storageShower.sh

local -a arguments

arguments=(
  '-h[display this message]'
  '-v[display script version]'
  '*:filename:_files'
)

_arguments -s -S $arguments
