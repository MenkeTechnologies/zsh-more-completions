#compdef wp8-1-sms.py
# Documentation: https://man.archlinux.org/search?q=wp8-1-sms.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-f[input File To Be Searched]'
  '-o[tab Separated Output Filename]'
  '*:filename:_files'
)

_arguments -s -S $arguments
