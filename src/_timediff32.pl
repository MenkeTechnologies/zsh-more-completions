#compdef timediff32.pl

local arguments

arguments=(
  '-h[|help ........ Help (print this information). Does not run anything else.]'
  '-ref[...... Reference date in YYYY-MM-DDTHH:mm:ss format.]'
  '-target[... Target date in YYYY-MM-DDTHH:mm:ss format.]'
  '*:filename:_files'
)

_arguments -s $arguments
