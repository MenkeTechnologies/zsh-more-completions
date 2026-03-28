#compdef dskeytab.py

local -a arguments

arguments=(
  '--debug[turn on detailed error messages and stack trace]'
  '*:filename:_files'
)

_arguments -s -S $arguments
