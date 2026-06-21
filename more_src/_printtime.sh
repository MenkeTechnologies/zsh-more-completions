#compdef printtime.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/printtime.sh
# BBTools: track and print elapsed time using a file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:filename:_files' \
  '*:file:_files' && ret=0

return ret
