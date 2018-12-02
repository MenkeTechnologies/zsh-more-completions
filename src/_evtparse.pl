#compdef evtparse.pl

local arguments

arguments=(
  '-e[........Event log (full path)]'
  '-d[.........Directory where .evt files are located]'
  '-s[...........Output in sequential format (record number and time]'
  '-t[...........TLN output (default .csv)]'
  '-h[...........Help (print this information)]'
  '*:filename:_files'
)

_arguments -s $arguments
