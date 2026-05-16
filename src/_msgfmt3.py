#compdef msgfmt3.py
# Documentation: https://man.archlinux.org/search?q=msgfmt3.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  {-o,--output-file}'[specify the output file to write to]'
  {-h,--help}'[print this message and exit]'
  {-V,--version}'[display version information and exit]'
  '*:filename:_files'
)

_arguments -s -S $arguments
