#compdef jobparse.pl

local arguments

arguments=(
  '-d[...parse all files in directory]'
  '-f[........parse a single .job file]'
  '-c[...........Comma-separated (.csv) output (open in Excel)]'
  '-t[...........get .job metadata in TLN format]'
  '-s[......add name of server to TLN ouput (use with -t)]'
  '-h[...........Help (print this information)]'
  '*:filename:_files'
)

_arguments -s $arguments
