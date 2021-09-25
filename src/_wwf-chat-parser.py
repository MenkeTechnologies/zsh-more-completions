#compdef wwf-chat-parser.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-d[wordsFramework database input file]'
  '-o[chat output in Tab Separated format]'
  '*:filename:_files'
)

_arguments -s $arguments
