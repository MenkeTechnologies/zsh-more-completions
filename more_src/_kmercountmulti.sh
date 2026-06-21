#compdef kmercountmulti.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/kmercountmulti.sh
# BBTools: estimate cardinality at multiple kmer lengths

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[input file or comma-delimited list]:file:_files' \
  'in2=-[optional second file for paired reads]:file:_files' \
  'out=-[histogram output]:file:_files' \
  'k=-[comma-delimited list of kmer lengths]:lengths:' \
  'sweep=-[incremented kmer values min,max,incr]:range:' \
  'buckets=-[number of buckets, power of 2]:int:' \
  'seed=-[hash function seed]:int:' \
  'minprob=-[exclude kmers below this probability]:float:' \
  'hashes=-[number of hash functions]:int:' \
  'stdev=-[print standard deviations]:bool:(t f)' \
  '*:file:_files' && ret=0

return ret
