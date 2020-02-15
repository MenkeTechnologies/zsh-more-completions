#compdef dsdeletedobjects.py

local arguments

arguments=(
  '--output[file name>]'
  '--useIsDeleted[extract deleted objects based on the IsDeleted flag]'
  '--debug[turn on detailed error messages and stack trace]'
  '*:filename:_files'
)

_arguments -s $arguments
