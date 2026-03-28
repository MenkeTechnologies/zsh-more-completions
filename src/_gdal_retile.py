#compdef gdal_retile.py

local -a arguments

arguments=(
  '-targetDir[input_files]'
  '*:filename:_files'
)

_arguments -s -S $arguments
