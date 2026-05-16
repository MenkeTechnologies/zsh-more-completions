#compdef oldCounter.sh
# Documentation: https://man.archlinux.org/search?q=oldCounter.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-c[see just count]'
  '-h[(this output)\033\[0m]'
  '*:filename:_files'
)

_arguments -s -S $arguments
