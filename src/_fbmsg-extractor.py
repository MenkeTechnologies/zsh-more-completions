#compdef fbmsg-extractor.py

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-t[threads_db2 input file]:file:_files'
  '-c[contacts_db2 input file]:file:_files'
  '-x[contacts tab separated output filename]:file:_files'
  '-z[messages tab separated output filename]:file:_files'
  '*:filename:_files'
)

_arguments -s -S $arguments
