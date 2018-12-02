#compdef gis4cookie.pl

local arguments

arguments=(
  '-h[|help ... Help (print this information). Does not run anything else.]'
  '-f[... Individual File to be parsed.]'
  '-p[... Directory (absolute path) containing Files to be parsed.]'
  '-d[....... (Optional) Decode URI encoded strings (eg replace %20 with space).]'
  '-o[. (Optional) Output to specified Tab separated file. Will overwrite any existing file.]'
  '*:filename:_files'
)

_arguments -s $arguments
