#compdef jp.py

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-f,--filename}'[the filename containing the input data. If a filename]'
  '--ast[pretty print the AST, do not search the data.]'
  '*:filename:_files'
)

_arguments -s -S $arguments
