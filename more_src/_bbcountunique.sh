#compdef bbcountunique.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/bb-tools-user-guide/
# BBCountUnique: generate a kmer uniqueness histogram across an input file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[primary input file]:file:_files' \
  'in2=[secondary input for paired reads]:file:_files' \
  'out=[output file for histogram statistics]:file:_files' \
  'interleaved=[override autodetection of interleaved input]:mode:(auto t f)' \
  'samplerate=[process a fraction of input reads]:rate:' \
  'reads=[maximum number of reads to process]:n:' \
  'k=[length of kmers analyzed (1-31)]:k:' \
  'interval=[number of reads per histogram line]:n:' \
  'cumulative=[display cumulative totals]:bool:(t f)' \
  'percent=[show percentages of unique reads]:bool:(t f)' \
  'count=[show raw counts of unique reads]:bool:(t f)' \
  'printlastbin=[include statistics for final undersized bin]:bool:(t f)' \
  'plb=[include statistics for final undersized bin]:bool:(t f)' \
  'minprob=[minimum kmer probability based on quality]:value:' \
  '*:file:_files' && ret=0

return ret
