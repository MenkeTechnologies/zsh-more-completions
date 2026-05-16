#compdef asip-status.pl
# Documentation: https://man.archlinux.org/search?q=asip-status.pl
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-d[Enable debug output.]'
  '-i[Show icon if it exists.]'
  '-x[Enable hex dump output.]'
  {-v,-version,--version}'[Show version.]'
  '*:filename:_files'
)

_arguments -s -S $arguments
