#compdef updaterNoPip.sh
# Documentation: https://man.archlinux.org/search?q=updaterNoPip.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-h[|help Display this message]'
  '-s[|skip Skip the main]'
  '-e[|end Skip the end]'
  '-v[|version Display script version]'
  '*:filename:_files'
)

_arguments -s -S $arguments
