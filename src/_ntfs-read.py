#compdef ntfs-read.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-extract[extracts pathname (e.g. \windows\system32\config\sam)]'
  '-debug[turn DEBUG output ON]'
  '*:filename:_files'
)

_arguments -s $arguments
