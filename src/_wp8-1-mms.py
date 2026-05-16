#compdef wp8-1-mms.py
# Documentation: https://man.archlinux.org/search?q=wp8-1-mms.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-s[store.vol file]'
  '-o[output Tab Separated Variable filename (Optional)]'
  '*:filename:_files'
)

_arguments -s -S $arguments
