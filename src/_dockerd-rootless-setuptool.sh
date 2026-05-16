#compdef dockerd-rootless-setuptool.sh
# Documentation: https://man.archlinux.org/search?q=dockerd-rootless-setuptool.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  {-f,--force}'[ignore rootful Docker (/var/run/docker.sock)]'
  '--skip-iptables[ignore missing iptables]'
  '*:filename:_files'
)

_arguments -s -S $arguments
