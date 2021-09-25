#compdef esentutl.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-debug[turn DEBUG output ON]'
  '-page[page to open]'
  '*:filename:_files'
)

_arguments -s $arguments
