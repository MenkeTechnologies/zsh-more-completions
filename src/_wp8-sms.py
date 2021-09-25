#compdef wp8-sms.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-f[input File To Be Searched]'
  '-o[tab Separated Output Filename]'
  '*:filename:_files'
)

_arguments -s $arguments
