#compdef test.sh

local arguments

arguments=(
    {-h,--help}'[display help information]'
    '*:filename:_files'
)
_arguments -s $arguments
