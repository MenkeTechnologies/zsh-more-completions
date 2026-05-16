#compdef print_apk_perms.py
# Documentation: https://man.archlinux.org/search?q=print_apk_perms.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-s[print permissions sorted by name (default is sorted by offset)]'
  '-d[prints ALL strings for debugging (default is OFF)]'
  '*:filename:_files'
)

_arguments -s -S $arguments
