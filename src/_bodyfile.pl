#compdef bodyfile.pl
# Documentation: https://man.archlinux.org/search?q=bodyfile.pl
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-f[........event file to be parsed; must be 5-field TLN]'
  '-s[......add a server name to the output]'
  '-h[...........Help (print this information)]'
  '*:filename:_files'
)

_arguments -s -S $arguments
