#compdef parseie.pl

local arguments

arguments=(
  '-f[........Path to a file]'
  '-r[...........Include REDR records]'
  '-t[...........TLN output (includes heuristics)]'
  '-s[......Use with -t]'
  '-u[........Use with -t]'
  '-h[...........Help (print this information)]'
  '*:filename:_files'
)

_arguments -s $arguments
