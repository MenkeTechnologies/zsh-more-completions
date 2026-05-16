#compdef WP8_AppPerms.py
# Documentation: https://man.archlinux.org/search?q=WP8_AppPerms.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '*:filename:_files'
)

_arguments -s -S $arguments
