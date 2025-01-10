#compdef normalize.py

local arguments

arguments=(
  {-h,--help}'[show this help message and exit]'
  {--input,-i}'[specify input file (default: None)]'
  {--output,-o}'[specify output file (default: None)]'
  {--dry-run,-n}'[simulate commands (default: False)]'
  '*:filename:_files'
)

_arguments -s $arguments
