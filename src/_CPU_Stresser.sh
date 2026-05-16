#compdef CPU_Stresser.sh
# Documentation: https://man.archlinux.org/search?q=CPU_Stresser.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-h[|help Display this message]'
  '-d[|disown Disown process to init]'
  '-n[|nproc <number> Number of processes to spawn]'
  '-v[|version Display script version]'
  '*:filename:_files'
)

_arguments -s -S $arguments
