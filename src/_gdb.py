#compdef gdb.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-p,--pid}'[attach running process specified by its identifier]'
  {-f,--fork}'[trace fork and child process]'
  '--trace-exec[trace execve() event]'
  '--no-stdout[use /dev/null as stdout/stderr, or close stdout and]'
  {-q,--quiet}'[be quiet (set log level to ERROR)]'
  {-v,--verbose}'[debug mode (set log level to INFO)]'
  '--debug[debug mode (set log level to DEBUG)]'
  '*:filename:_files'
)

_arguments -s $arguments
