#compdef updater.sh

local -a arguments

arguments=(
  '-h[|help Display this message]'
  '-s[|skip Skip the main]'
  '-e[|end Skip the end]'
  '-v[|version Display script version]'
  '*:filename:_files'
)

_arguments -s -S $arguments
