#compdef parseie.pl
# Documentation: https://man.archlinux.org/search?q=parseie.pl
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-f[........Path to a file]'
  '-r[...........Include REDR records]'
  '-t[...........TLN output (includes heuristics)]'
  '-s[......Use with -t]'
  '-u[........Use with -t]'
  '-h[...........Help (print this information)]'
  '*:filename:_files'
)

_arguments -s -S $arguments
