#compdef shred.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/shred.sh
# BBTools: shred sequences into shorter fragments

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[input sequences]:file:_files' \
  'out=-[destination of output shreds]:file:_files' \
  'length=-[desired length of shreds]:int:' \
  'minlength=-[shortest allowed shred]:int:' \
  'overlap=-[overlap between successive reads]:int:' \
  'reads=-[stop after this many input sequences]:int:' \
  'equal=-[shred into equal-size subsequences]:bool:(t f)' \
  'median=-[randomly shred to a median length]:int:' \
  'variance=-[shred to median +- variance]:int:' \
  '*:file:_files' && ret=0

return ret
