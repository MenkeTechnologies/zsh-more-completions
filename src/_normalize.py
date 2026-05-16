#compdef normalize.py
# Documentation: https://man.archlinux.org/search?q=normalize.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  {-h,--help}'[show this help message and exit]'
  {--input,-i}'[specify input file (default: None)]'
  {--output,-o}'[specify output file (default: None)]'
  {--dry-run,-n}'[simulate commands (default: False)]'
  '*:filename:_files'
)

_arguments -s -S $arguments
