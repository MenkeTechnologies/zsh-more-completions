#compdef wp8-1-mms-filesort.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-i[input Directory To Be Processed]'
  '-t[output Tab Separated Variable (TSV) filename (Optional)]'
  '-o[output HTML filename (Optional)]'
  '*:filename:_files'
)

_arguments -s $arguments
