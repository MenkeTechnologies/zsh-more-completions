#compdef picture_finder.sh

local arguments

arguments=(
  '-m[mode]'
  '-p[no error if exists; make parent directories as needed]'
  '*:filename:_files'
)

_arguments -s $arguments
