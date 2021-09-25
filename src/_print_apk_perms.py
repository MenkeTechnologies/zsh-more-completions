#compdef print_apk_perms.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-s[print permissions sorted by name (default is sorted by offset)]'
  '-d[prints ALL strings for debugging (default is OFF)]'
  '*:filename:_files'
)

_arguments -s $arguments
