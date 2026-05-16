#compdef dsdeletedobjects.py
# Documentation: https://man.archlinux.org/search?q=dsdeletedobjects.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '--output[file name>]'
  '--useIsDeleted[extract deleted objects based on the IsDeleted flag]'
  '--debug[turn on detailed error messages and stack trace]'
  '*:filename:_files'
)

_arguments -s -S $arguments
