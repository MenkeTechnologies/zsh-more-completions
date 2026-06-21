#compdef cutprimers.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/cutprimers.sh
# BBTools: cut primer sequences from reads using mapped sam

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[file containing reads]:file:_files' \
  'out=-[output sequences]:file:_files' \
  'sam1=-[sam file with mapped locations of primer 1]:file:_files' \
  'sam2=-[sam file with mapped locations of primer 2]:file:_files' \
  'fake=-[output 1bp N reads when no primer]:bool:(t f)' \
  'include=-[include flanking primer sequences in output]:bool:(t f)' \
  '*:file:_files' && ret=0

return ret
