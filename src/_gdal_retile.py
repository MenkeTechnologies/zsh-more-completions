#compdef gdal_retile.py
# Documentation: https://man.archlinux.org/search?q=gdal_retile.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-targetDir[input_files]'
  '*:filename:_files'
)

_arguments -s -S $arguments
