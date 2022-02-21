#compdef mesa-overlay-control.py

local arguments

arguments=(
  {-h,--help}'[show this help message and exit]'
  '--info[print info from socket]'
  {--socket,-s}'[path to socket]'
  '*:filename:_files'
)

_arguments -s $arguments
