#compdef rawie.pl
# Documentation: https://man.archlinux.org/search?q=rawie.pl
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-f[........Path to a file]'
  '-t[...........TLN output]'
  '-s[......Use with -t]'
  '-u[........Use with -t]'
  '-h[...........Help (print this information)]'
  '*:filename:_files'
)

_arguments -s -S $arguments
