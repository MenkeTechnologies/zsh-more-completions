#compdef dockerd-rootless-setuptool.sh

local arguments

arguments=(
  {-f,--force}'[ignore rootful Docker (/var/run/docker.sock)]'
  '--skip-iptables[ignore missing iptables]'
  '*:filename:_files'
)

_arguments -s $arguments
