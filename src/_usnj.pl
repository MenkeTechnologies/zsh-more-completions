#compdef usnj.pl

local arguments

arguments=(
  '-f[........USN Change Journal (full path)]'
  '-c[...........CSV output]'
  '-t[...........TLN output (use with -s)]'
  '-s[......System name (use with -t)]'
  '-h[...........Help (print this information)]'
  '*:filename:_files'
)

_arguments -s $arguments
