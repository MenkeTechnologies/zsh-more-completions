#compdef c.pl

local -a arguments

arguments=(
  '-M[use LIST as a colon-separated list of magic]:list:'
  '-d[use default magic file]'
  '-i[do not further classify regular files]'
  '*:filename:_files'
)

_arguments -s -S $arguments
