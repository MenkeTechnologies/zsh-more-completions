#compdef pecarve.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-f,--file}'[raw file to carve]'
  {-o,--output}'[output folder for extracted files]'
  '--log[log output file]'
  '*:filename:_files'
)

_arguments -s $arguments
