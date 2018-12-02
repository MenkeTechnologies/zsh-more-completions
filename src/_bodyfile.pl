#compdef bodyfile.pl

local arguments

arguments=(
  '-f[........event file to be parsed; must be 5-field TLN]'
  '-s[......add a server name to the output]'
  '-h[...........Help (print this information)]'
  '*:filename:_files'
)

_arguments -s $arguments
