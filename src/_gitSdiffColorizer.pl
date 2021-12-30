#compdef gitSdiffColorizer.pl

local arguments

arguments=(
  '--help[]'
  '--help[.cjk]'
  '--help[.dic]'
  '-h[]'
  '-h[.cjk]'
  '-h[.dic]'
  '*:filename:_files'
)

_arguments -s $arguments
