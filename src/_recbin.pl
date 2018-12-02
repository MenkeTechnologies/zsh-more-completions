#compdef recbin.pl

local arguments

arguments=(
  '-f[..................path to XP INFO2 file or Win7/10 $I file]'
  '-c[.....................output in csv format to STDOUT]'
  '-t[.....................timeline format output to STDOUT]'
  '-s[............add system name to appropriate field in tln file]'
  '-u[..................add user (or SID) to appropriate field in tln file]'
  '-h[.......................Help (print this information)]'
  '*:filename:_files'
)

_arguments -s $arguments
