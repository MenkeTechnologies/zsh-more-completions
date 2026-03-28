#compdef storageShower.sh

local -a arguments

arguments=(
  '-h[|help Display this message]'
  '-v[|version Display script version]'
  '*:filename:_files'
)

_arguments -s -S $arguments
