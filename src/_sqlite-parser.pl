#compdef sqlite-parser.pl

local -a arguments

arguments=(
  '-h[print help information and exit]'
  '-file[... sqlite filename to be parsed.]'
  '*:filename:_files'
)

_arguments -s -S $arguments
