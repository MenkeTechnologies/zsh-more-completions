#compdef google-ei-time.py
# Documentation: https://man.archlinux.org/search?q=google-ei-time.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-e[google search URLs EI parameter value]'
  '-u[complete Google search URL]'
  '-q[(Optional) Quiet output (only outputs timestamp string)]'
  '*:filename:_files'
)

_arguments -s -S $arguments
