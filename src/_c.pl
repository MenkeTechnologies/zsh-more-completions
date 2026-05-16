#compdef c.pl
# Documentation: https://man.archlinux.org/search?q=c.pl
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-M[use LIST as a colon-separated list of magic]:list:'
  '-d[use default magic file]'
  '-i[do not further classify regular files]'
  '*:filename:_files'
)

_arguments -s -S $arguments
