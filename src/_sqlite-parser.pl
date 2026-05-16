#compdef sqlite-parser.pl
# Documentation: https://man.archlinux.org/search?q=sqlite-parser.pl
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-h[print help information and exit]'
  '-file[... sqlite filename to be parsed.]'
  '*:filename:_files'
)

_arguments -s -S $arguments
