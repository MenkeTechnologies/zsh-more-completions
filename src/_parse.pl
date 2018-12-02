#compdef parse.pl

local arguments

arguments=(
  '-f[........event file to be parsed; must be 5-field TLN]'
  '-c[...........CSV output format (for opening in Excel), time in]'
  '-o[...........sort showing oldest events first]'
  '-r[......range of dates, MM/DD/YYYY-MM/DD/YYYY format; time range of]'
  '-h[...........Help (print this information)]'
  '*:filename:_files'
)

_arguments -s $arguments
