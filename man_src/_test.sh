#compdef test.sh
# Documentation: https://man.archlinux.org/search?q=test.sh
# Reference accessed: 2026-05-16

local arguments

arguments=(
    {-h,--help}'[display help information]'
    '*:filename:_files'
)
_arguments -s $arguments
