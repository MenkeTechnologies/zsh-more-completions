#compdef createmodule.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-p,--prefix}'[specify path prefix]'
  '--noprefix[do not generate a prefix]'
  '*:filename:_files'
)

_arguments -s $arguments
