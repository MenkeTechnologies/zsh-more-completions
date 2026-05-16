#compdef target_dec_fate.sh
# Documentation: https://man.archlinux.org/search?q=target_dec_fate.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '--help[not an accessable directory]'
  '*:filename:_files'
)

_arguments -s -S $arguments
