#compdef jobparser.py

local -a arguments

arguments=(
  '-f[]'
  '-d[of job files>]'
  '*:filename:_files'
)

_arguments -s -S $arguments
