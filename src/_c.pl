#compdef c.pl

local arguments

arguments=(
  '-M[use LIST as a colon-separated list of magic]'
  '-d[use default magic file]'
  '-i[do not further classify regular files]'
  '*:filename:_files'
)

_arguments -s $arguments
