#compdef dskeytab.py
# Documentation: https://man.archlinux.org/search?q=dskeytab.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '--debug[turn on detailed error messages and stack trace]'
  '*:filename:_files'
)

_arguments -s -S $arguments
