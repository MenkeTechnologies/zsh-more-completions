#compdef wp8-fb-msg.py
# Documentation: https://man.archlinux.org/search?q=wp8-fb-msg.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-f[input File To Be Searched]'
  '-o[tab Separated Output Filename]'
  '-u[(Optional) Input file is Unicode encoded]'
  '*:filename:_files'
)

_arguments -s -S $arguments
