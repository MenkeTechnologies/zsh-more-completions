#compdef jobparser.py

local arguments

arguments=(
  '-f[]'
  '-d[of job files>]'
  '*:filename:_files'
)

_arguments -s $arguments
