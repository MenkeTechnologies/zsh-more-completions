#compdef msgfmt3.12.py

local -a arguments

arguments=(
  {-o,--output-file}'[specify the output file to write to]:file:_files'
  '(- * :)'{-h,--help}'[print this message and exit]'
  '(- * :)'{-V,--version}'[display version information and exit]'
  '*:filename:_files'
)

_arguments -s -S $arguments
