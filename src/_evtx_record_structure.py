#compdef evtx_record_structure.py

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '--suppress[_values Do not print the values of substitutions.]'
  '*:filename:_files'
)

_arguments -s -S $arguments
