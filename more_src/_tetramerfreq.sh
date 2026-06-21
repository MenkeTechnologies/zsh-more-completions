#compdef tetramerfreq.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/tetramerfreq.sh
# BBTools: calculate tetramer frequencies over windows

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[DNA sequence input file]:file:_files' \
  'out=-[output file name]:file:_files' \
  'step=-[step size]:int:' \
  'window=-[window size, <=0 turns windowing off]:int:' \
  'short=-[print lines for sequences shorter than window]:bool:(T F)' \
  'k=-[kmer length]:int:' \
  '*:file:_files' && ret=0

return ret
