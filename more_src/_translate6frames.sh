#compdef translate6frames.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/translate6frames.sh
# BBTools: translate nucleotides in all six reading frames

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[main input or read 1 input]:file:_files' \
  'in2=-[input for 2nd read of pairs]:file:_files' \
  'int=-[override interleaved autodetection]:bool:(auto t f)' \
  'qin=-[input quality offset]:offset:(33 64 auto)' \
  'aain=-[input is amino acids]:bool:(t f)' \
  'reads=-[quit after processing X reads]:int:' \
  'out=-[output destination]:file:_files' \
  'out2=-[write 2nd read of pairs to different file]:file:_files' \
  'overwrite=-[overwrite existing files]:bool:(t f)' \
  'append=-[append to existing files]:bool:(t f)' \
  'ziplevel=-[compression level 1-9]:level:' \
  'fastawrap=-[length of lines in fasta output]:int:' \
  'qout=-[output quality offset]:offset:(33 64 auto)' \
  'aaout=-[output amino acids]:bool:(t f)' \
  'tag=-[tag read id with the frame]:bool:(t f)' \
  'frames=-[only print this many frames]:int:' \
  '*:file:_files' && ret=0

return ret
