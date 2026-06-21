#compdef loglog.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/loglog.sh
# BBTools: estimate unique kmer cardinality via LogLog

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[input file or comma-delimited list]:file:_files' \
  'in2=-[optional second file for paired reads]:file:_files' \
  'k=-[kmer length for counting]:int:' \
  'buckets=-[number of buckets, power of 2]:int:' \
  'seed=-[hash function seed]:int:' \
  'minprob=-[exclude kmers below this probability]:float:' \
  '*:file:_files' && ret=0

return ret
