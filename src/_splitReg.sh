#compdef splitReg.sh

local -a arguments

arguments=(
  '-i[|inverse set filter to after regex]'
  '-h[|help Display this message]'
  '-v[|version Display script version\[0m]'
  '*:filename:_files'
)

_arguments -s -S $arguments
