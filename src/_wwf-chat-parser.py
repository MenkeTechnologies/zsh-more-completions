#compdef wwf-chat-parser.py
# Documentation: https://man.archlinux.org/search?q=wwf-chat-parser.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-d[wordsFramework database input file]'
  '-o[chat output in Tab Separated format]'
  '*:filename:_files'
)

_arguments -s -S $arguments
