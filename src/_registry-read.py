#compdef registry-read.py
# Documentation: https://man.archlinux.org/search?q=registry-read.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '*:filename:_files'
)

_arguments -s -S $arguments
