#compdef mergeOTUs.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/mergeOTUs.sh
# BBTools: merge OTUs by similarity

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[input file]:file:_files' \
  'out=-[output file]:file:_files' \
  '*:file:_files' && ret=0

return ret
