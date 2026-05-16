#compdef dextract.py
# Documentation: https://man.archlinux.org/search?q=dextract.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-d[template Definition File]'
  '-f[input File To Be Searched]'
  '-o[(Optional) Tab Seperated Output Filename]'
  '-a[(Optional) Starting File Offset (decimal). Default is 0.]'
  '-z[(Optional) End File Offset (decimal). Default is the end of]'
  '*:filename:_files'
)

_arguments -s -S $arguments
