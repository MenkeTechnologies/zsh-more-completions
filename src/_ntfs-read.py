#compdef ntfs-read.py
# Documentation: https://man.archlinux.org/search?q=ntfs-read.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-extract[extracts pathname (e.g. \windows\system32\config\sam)]'
  '-debug[turn DEBUG output ON]'
  '*:filename:_files'
)

_arguments -s -S $arguments
