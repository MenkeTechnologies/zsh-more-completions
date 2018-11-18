#compdef oldCounter.sh

local arguments

arguments=(
  '-c[see just count]'
  '-h[(this output)\033\[0m]'
  '*:filename:_files'
)

_arguments -s $arguments
