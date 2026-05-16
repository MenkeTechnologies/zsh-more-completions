#compdef bottle.py
# Documentation: https://man.archlinux.org/search?q=bottle.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '--version[show version number.]'
  {-b,--bind}'[bind socket to ADDRESS.]'
  {-s,--server}'[use SERVER as backend.]'
  {-p,--plugin}'[install additional plugin/s.]'
  '--debug[start server in debug mode.]'
  '--reload[auto-reload on file changes.]'
  '*:filename:_files'
)

_arguments -s -S $arguments
