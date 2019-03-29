#compdef debian-update-rc.d

local arguments

arguments=(
  '-f[force]'
  '*:filename:_files'
)

_arguments -s $arguments
