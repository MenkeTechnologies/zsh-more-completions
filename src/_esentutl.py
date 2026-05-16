#compdef esentutl.py
# Documentation: https://man.archlinux.org/search?q=esentutl.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-debug[turn DEBUG output ON]'
  '-page[page to open]'
  '*:filename:_files'
)

_arguments -s -S $arguments
