#compdef sqlite-parser.pl

local -a arguments

arguments=(
  '-h[|help .......... Help (print this information). Does not run anything else.]'
  '-file[... sqlite filename to be parsed.]'
  '*:filename:_files'
)

_arguments -s -S $arguments
