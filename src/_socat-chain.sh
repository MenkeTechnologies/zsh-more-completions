#compdef socat-chain.sh
# Documentation: https://man.archlinux.org/search?q=socat-chain.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-d[* -S <sigmask> -t <timeout> -T <timeout> are passed to socat]'
  '-V[prints the socat commands before starting them]'
  '*:filename:_files'
)

_arguments -s -S $arguments
