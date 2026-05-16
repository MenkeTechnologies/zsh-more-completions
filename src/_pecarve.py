#compdef pecarve.py
# Documentation: https://man.archlinux.org/search?q=pecarve.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-f,--file}'[raw file to carve]'
  {-o,--output}'[output folder for extracted files]'
  '--log[log output file]'
  '*:filename:_files'
)

_arguments -s -S $arguments
