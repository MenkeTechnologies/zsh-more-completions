#compdef usn.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-b,--body}'[return USN records in comma-separated format]'
  {-c,--csv}'[return USN records in comma-separated format]'
  {-f,--file}'[parse the given USN journal file]'
  {-o,--outfile}'[parse the given USN journal file]'
  {-s,--system}'[system name (use with -t)]'
  {-t,--tln}'[TLN ou2tput (use with -s)]'
  {-v,--verbose}'[return all USN properties for each record (JSON)]'
  '*:filename:_files'
)

_arguments -s $arguments
