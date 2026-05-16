#compdef page_brute-BETA.py
# Documentation: https://man.archlinux.org/search?q=page_brute-BETA.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-r,--rules}'[file/directory containing YARA signatures (must end]'
  {-f,--file}'[pagefile or any chunk/block-based binary file]'
  {-p,--size}'[size of chunk/block in bytes (Default 4096)]'
  {-o,--scanname}'[descriptor of the scan session - used for output]'
  {-i,--invert}'[given scan options, match all blocks that DO NOT match]'
  '*:filename:_files'
)

_arguments -s -S $arguments
