#compdef bing-bar-parser.pl

local arguments

arguments=(
  '-h[|help ... Help (print this information). Does not run anything else.]'
  '-f[... Bing Bar searchhs.dat file to be parsed.]'
  '-d[....... Applies URI decoding to search terms (eg replaces %20 with space).]'
  '*:filename:_files'
)

_arguments -s $arguments
