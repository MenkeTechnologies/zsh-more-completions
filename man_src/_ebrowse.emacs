#compdef ebrowse.emacs

local arguments

arguments=(
  {-a,--append}'[append output to existing file]'
  {-f,--files}'[read input file names from FILE]'
  {-I,--search-path}'[set search path for input files]'
  {-m,--min-regexp-length}'[set minimum regexp length to N]'
  {-M,--max-regexp-length}'[set maximum regexp length to N]'
  {-n,--no-nested-classes}'[exclude nested classes]'
  {-o,--output-file}'[set output file name to FILE]'
  {-p,--position-info}'[print info about position in file]'
  {-s,--no-structs-or-unions}'[dont record structs or unions]'
  {-v,--verbose}'[be verbose]'
  {-V,--very-verbose}'[be very verbose]'
  {-x,--no-regexps}'[dont record regular expressions]'
  '--help[display this help]'
  '--version[display version info]'
  '*:filename:_files'
)

_arguments -s $arguments
