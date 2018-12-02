#compdef rip.pl

local arguments

arguments=(
  '-r[hive file...Registry hive file to parse]'
  '-g[...............Guess the hive file (experimental)]'
  '-f[file\]...use the plugin file (ntuser | sam | system | software | security | usrclass)]'
  '-p[module...use only this module]'
  '-l[...............list all plugins]'
  '-c[...............Output list in CSV format (use with -l)]'
  '-h[.................Help (print this information)]'
  '*:filename:_files'
)

_arguments -s $arguments
