#compdef mesa-overlay-control.py
# Documentation: https://man.archlinux.org/search?q=mesa-overlay-control.py
# Reference accessed: 2026-05-16

local arguments

arguments=(
  {-h,--help}'[show this help message and exit]'
  '--info[print info from socket]'
  {--socket,-s}'[path to socket]'
  '*:filename:_files'
)

_arguments -s $arguments
