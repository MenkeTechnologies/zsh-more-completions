#compdef jobparser.py
# Documentation: https://man.archlinux.org/search?q=jobparser.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-f[specify job file]:file:_files'
  '-d[specify directory of job files]:directory:_files -/'
  '*:filename:_files'
)

_arguments -s -S $arguments
