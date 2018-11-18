#compdef CPU_Stresser.sh

local arguments

arguments=(
  '-h[|help Display this message]'
  '-d[|disown Disown process to init]'
  '-n[|nproc <number> Number of processes to spawn]'
  '-v[|version Display script version]'
  '*:filename:_files'
)

_arguments -s $arguments
