#compdef getreads.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/getreads.sh
# BBTools: select reads from a file by numeric id

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[input file or stdin]:file:_files' \
  'out=-[output file or stdout]:file:_files' \
  'id=-[comma-delimited list of numbers or ranges]:ids:' \
  '*:file:_files' && ret=0

return ret
