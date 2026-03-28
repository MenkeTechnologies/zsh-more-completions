#compdef jobparser.py

local -a arguments

arguments=(
  '-f[specify job file]:file:_files'
  '-d[specify directory of job files]:directory:_files -/'
  '*:filename:_files'
)

_arguments -s -S $arguments
