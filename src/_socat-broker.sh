#compdef socat-broker.sh
# Documentation: https://man.archlinux.org/search?q=socat-broker.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-d[* -S -t <timeout> -T <timeout> are passed to socat]'
  '-V[prints the socat command before starting it]'
  '*:filename:_files'
)

_arguments -s -S $arguments
