#compdef gdal_retile.py

local arguments

arguments=(
  '-targetDir[input_files]'
  '*:filename:_files'
)

_arguments -s $arguments
