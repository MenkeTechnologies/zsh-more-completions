#compdef createmodule.py
# Documentation: https://man.archlinux.org/search?q=createmodule.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-p,--prefix}'[specify path prefix]'
  '--noprefix[do not generate a prefix]'
  '*:filename:_files'
)

_arguments -s -S $arguments
