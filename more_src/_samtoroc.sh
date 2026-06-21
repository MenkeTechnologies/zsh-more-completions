#compdef samtoroc.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/samtoroc.sh
# BBTools: generate ROC curve from a sam file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[input sam file or stdin]:file:_files' \
  'reads=-[number of reads in input fastq]:int:' \
  'thresh=-[max deviation to be loosely correct]:int:' \
  'blasr=-[fix BLASR read name info]:bool:(t f)' \
  'ssaha2=-[fix SSAHA2/SMALT soft-clipped locations]:bool:(t f)' \
  'bitset=-[track read ids to detect secondary alignments]:bool:(t f)' \
  '*:file:_files' && ret=0

return ret
