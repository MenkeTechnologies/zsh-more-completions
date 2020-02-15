#compdef dsgroups.py

local arguments

arguments=(
  '--rid[rid>]'
  '--name[name regexp>]'
  '--members[extracts the members of the group]'
  '--csvoutfile[of the CSV output file>]'
  '--debug[turn on detailed error messages and stack trace]'
  '*:filename:_files'
)

_arguments -s $arguments
