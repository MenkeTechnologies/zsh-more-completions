#compdef storageShower.sh

local arguments

arguments=(
  '-h[|help Display this message]'
  '-v[|version Display script version]'
  '*:filename:_files'
)

_arguments -s $arguments
