#compdef picture_finder.sh

local -a arguments

arguments=(
  '-m[mode]'
  '-p[no error if exists; make parent directories as needed]'
  '*:filename:_files'
)

_arguments -s -S $arguments
