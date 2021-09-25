#compdef wp8-1-mms.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-s[store.vol file]'
  '-o[output Tab Separated Variable filename (Optional)]'
  '*:filename:_files'
)

_arguments -s $arguments
