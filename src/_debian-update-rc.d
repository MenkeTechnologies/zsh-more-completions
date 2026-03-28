#compdef debian-update-rc.d

local -a arguments

arguments=(
  '-f[force]'
  '*:filename:_files'
)

_arguments -s -S $arguments
