#compdef ff_signons.pl

local arguments

arguments=(
  '-f[........Path to a file]'
  '-c[...........CSV output]'
  '-t[...........TLN output]'
  '-s[......Use with -t]'
  '-u[........Use with -t]'
  '-h[...........Help (print this information)]'
  '*:filename:_files'
)

_arguments -s $arguments
