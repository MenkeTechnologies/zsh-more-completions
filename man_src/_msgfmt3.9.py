#compdef msgfmt3.9.py

local arguments

arguments=(
  '-o[]'
  '--output-file[specify the output file to write to.  If omitted, output will go to a]'
  '-h[]'
  '--help[print this message and exit.]'
  '-V[]'
  '--version[display version information and exit.]'
  '*:filename:_files'
)

_arguments -s $arguments
