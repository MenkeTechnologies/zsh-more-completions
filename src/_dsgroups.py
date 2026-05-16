#compdef dsgroups.py
# Documentation: https://man.archlinux.org/search?q=dsgroups.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '--rid[rid>]'
  '--name[name regexp>]'
  '--members[extracts the members of the group]'
  '--csvoutfile[of the CSV output file>]'
  '--debug[turn on detailed error messages and stack trace]'
  '*:filename:_files'
)

_arguments -s -S $arguments
