#compdef event_rpcgen.py

local arguments

arguments=(
  '--help[: No such file or directory]'
  '*:filename:_files'
)

_arguments -s $arguments
