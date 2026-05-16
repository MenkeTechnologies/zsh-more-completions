#compdef ff_signons.pl
# Documentation: https://man.archlinux.org/search?q=ff_signons.pl
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-f[........Path to a file]'
  '-c[...........CSV output]'
  '-t[...........TLN output]'
  '-s[......Use with -t]'
  '-u[........Use with -t]'
  '-h[...........Help (print this information)]'
  '*:filename:_files'
)

_arguments -s -S $arguments
