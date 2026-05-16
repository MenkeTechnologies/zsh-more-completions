#compdef gis4cookie.pl
# Documentation: https://man.archlinux.org/search?q=gis4cookie.pl
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-h[|help ... Help (print this information). Does not run anything else.]'
  '-f[... Individual File to be parsed.]'
  '-p[... Directory (absolute path) containing Files to be parsed.]'
  '-d[....... (Optional) Decode URI encoded strings (eg replace %20 with space).]'
  '-o[. (Optional) Output to specified Tab separated file. Will overwrite any existing file.]'
  '*:filename:_files'
)

_arguments -s -S $arguments
