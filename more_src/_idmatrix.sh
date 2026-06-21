#compdef idmatrix.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/idmatrix.sh
# BBTools: all-to-all sequence identity matrix

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[file containing reads]:file:_files' \
  'out=-[matrix output]:file:_files' \
  'threads=-[number of threads]:threads:' \
  'percent=-[output identity as percent not fraction]:bool:(t f)' \
  'edits=-[allow at most this edit distance]:int:' \
  'width=-[alignment bandwidth]:int:' \
  'usejni=-[do alignments in C code]:bool:(t f)' \
  '*:file:_files' && ret=0

return ret
