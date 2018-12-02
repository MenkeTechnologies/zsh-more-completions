#compdef idx.pl

local arguments

arguments=(
  '-f[........Path to a file]'
  '-d[.........Directory (see example below)]'
  '-c[...........CSV output (includes heuristics)]'
  '-t[...........TLN output (includes heuristics)]'
  '-s[......Use with -t]'
  '-u[........Use with -t]'
  '-h[...........Help (print this information)]'
  '*:filename:_files'
)

_arguments -s $arguments
