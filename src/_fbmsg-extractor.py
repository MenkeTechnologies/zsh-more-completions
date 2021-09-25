#compdef fbmsg-extractor.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-t[threads_db2 input file]'
  '-c[contacts_db2 input file]'
  '-x[(Optional) Contacts Tab Separated Output Filename]'
  '-z[(Optional) Messages Tab Separated Output Filename]'
  '*:filename:_files'
)

_arguments -s $arguments
