#compdef replay.pl

local -a arguments

arguments=(
  '-file[parse request from this file]'
  '-proxy[send request through this proxy (format: host:port)]'
  '-help[help output]'
  '*:filename:_files'
)

_arguments -s -S $arguments
