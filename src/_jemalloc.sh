#compdef jemalloc.sh
# Documentation: https://man.archlinux.org/search?q=jemalloc.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-a[pass NAME as the zeroth argument to COMMAND]'
  '-c[execute COMMAND with an empty environment]'
  '-l[place a dash in the zeroth argument to COMMAND]'
  '*:filename:_files'
)

_arguments -s -S $arguments
