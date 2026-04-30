#compdef socat-broker.sh

local -a arguments

arguments=(
  '-d[* -S -t <timeout> -T <timeout> are passed to socat]'
  '-V[prints the socat command before starting it]'
  '*:filename:_files'
)

_arguments -s -S $arguments
