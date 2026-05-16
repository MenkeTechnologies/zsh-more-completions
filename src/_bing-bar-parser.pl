#compdef bing-bar-parser.pl
# Documentation: https://man.archlinux.org/search?q=bing-bar-parser.pl
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-h[print help information]'
  '-f[Bing Bar searchhs.dat file to be parsed]:file:_files'
  '-d[apply URI decoding to search terms]'
  '*:filename:_files'
)

_arguments -s -S $arguments
