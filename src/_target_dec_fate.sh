#compdef target_dec_fate.sh

local -a arguments

arguments=(
  '--help[not an accessable directory]'
  '*:filename:_files'
)

_arguments -s -S $arguments
