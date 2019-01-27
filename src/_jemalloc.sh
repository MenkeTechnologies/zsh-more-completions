#compdef jemalloc.sh

local arguments

arguments=(
  '-a[pass NAME as the zeroth argument to COMMAND]'
  '-c[execute COMMAND with an empty environment]'
  '-l[place a dash in the zeroth argument to COMMAND]'
  '*:filename:_files'
)

_arguments -s $arguments
