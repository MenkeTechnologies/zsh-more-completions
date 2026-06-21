#compdef khist.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/khist.sh
# BBTools: generate kmer frequency histogram

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[input reads or assemblies]:file:_files' \
  'hist=-[histogram output file]:file:_files' \
  '*:file:_files' && ret=0

return ret
