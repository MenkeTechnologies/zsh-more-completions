#compdef sqlite-parser.pl

local arguments

arguments=(
  '-h[|help .......... Help (print this information). Does not run anything else.]'
  '-file[... sqlite filename to be parsed.]'
  '*:filename:_files'
)

_arguments -s $arguments
