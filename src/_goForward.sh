#compdef goForward.sh

local -a arguments

arguments=(
  '-L[force symbolic links to be followed]'
  '-P[use the physical directory structure without following symbolic links]'
  '*:filename:_files'
)

_arguments -s -S $arguments
