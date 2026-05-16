#compdef lfle.pl
# Documentation: https://man.archlinux.org/search?q=lfle.pl
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-f[........file to be parsed]'
  '-d[...........debug mode (default: off)]'
  '-s[...........maintain/print statistics]'
  '-h[...........Help (print this information)]'
  '*:filename:_files'
)

_arguments -s -S $arguments
