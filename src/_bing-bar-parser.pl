#compdef bing-bar-parser.pl

local -a arguments

arguments=(
  '-h[print help information]'
  '-f[Bing Bar searchhs.dat file to be parsed]:file:_files'
  '-d[apply URI decoding to search terms]'
  '*:filename:_files'
)

_arguments -s -S $arguments
