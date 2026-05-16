#compdef evtx_record_structure.py
# Documentation: https://man.archlinux.org/search?q=evtx_record_structure.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '--suppress[_values Do not print the values of substitutions.]'
  '*:filename:_files'
)

_arguments -s -S $arguments
