#compdef mqtt_check.py

local arguments

arguments=(
  '--help[show this help message and exit]'
  '-client-id[client ID used when authenticating (default random)]'
  '-ssl[turn SSL on]'
  '-port[port to connect to (default 1883)]'
  '-debug[turn DEBUG output ON]'
  '*:filename:_files'
)

_arguments -s $arguments
