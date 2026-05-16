#compdef amcache.py
# Documentation: https://man.archlinux.org/search?q=amcache.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-v[enable verbose output]'
  '-t[output in simple timeline format]'
  '*:filename:_files'
)

_arguments -s -S $arguments
