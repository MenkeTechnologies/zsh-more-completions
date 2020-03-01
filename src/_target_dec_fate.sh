#compdef target_dec_fate.sh

local arguments

arguments=(
  '--help[not an accessable directory]'
  '*:filename:_files'
)

_arguments -s $arguments
