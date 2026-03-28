#compdef oldCounter.sh

local -a arguments

arguments=(
  '-c[see just count]'
  '-h[(this output)\033\[0m]'
  '*:filename:_files'
)

_arguments -s -S $arguments
