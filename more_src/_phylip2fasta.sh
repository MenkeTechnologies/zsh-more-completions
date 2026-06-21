#compdef phylip2fasta.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/phylip2fasta.sh
# BBTools: convert phylip format to fasta

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[input phylip file]:file:_files' \
  'unpigz=-[decompress with pigz]:bool:(true false)' \
  'out=-[fasta output destination]:file:_files' \
  '*:file:_files' && ret=0

return ret
