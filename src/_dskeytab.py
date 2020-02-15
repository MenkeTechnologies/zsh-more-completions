#compdef dskeytab.py

local arguments

arguments=(
  '--debug[turn on detailed error messages and stack trace]'
  '*:filename:_files'
)

_arguments -s $arguments
