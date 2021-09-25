#compdef wp8-fb-msg.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-f[input File To Be Searched]'
  '-o[tab Separated Output Filename]'
  '-u[(Optional) Input file is Unicode encoded]'
  '*:filename:_files'
)

_arguments -s $arguments
