#compdef prefetch.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-c,--csv}'[present results in CSV format]'
  {-d,--directory}'[parse all PF files in a given directory]'
  {-e,--executed}'[sort PF files by ALL execution times]'
  {-f,--file}'[parse a given Prefetch file]'
  '*:filename:_files'
)

_arguments -s $arguments
