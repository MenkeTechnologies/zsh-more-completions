#compdef wp8-1-mms-filesort.py
# Documentation: https://man.archlinux.org/search?q=wp8-1-mms-filesort.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-i[input Directory To Be Processed]'
  '-t[output Tab Separated Variable (TSV) filename (Optional)]'
  '-o[output HTML filename (Optional)]'
  '*:filename:_files'
)

_arguments -s -S $arguments
