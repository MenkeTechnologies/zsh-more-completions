#compdef regtime.pl
# Documentation: https://man.archlinux.org/search?q=regtime.pl
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-m[.........Hive file to prepend to key paths (use / separator, use _]'
  '-r[.........Hive file to parse]'
  '-s[.........System name]'
  '-u[.........User name]'
  '-h[..............Help (print this information)]'
  '*:filename:_files'
)

_arguments -s -S $arguments
