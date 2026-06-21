#compdef kmercountexact.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/kmercountexact.sh
# BBTools: exact kmer counting and histograms

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[primary input file]:file:_files' \
  'in2=-[second input file for paired reads]:file:_files' \
  'amino=-[run in amino acid mode]:bool:(t f)' \
  'out=-[print kmers and counts]:file:_files' \
  'fastadump=-[print kmers as fasta vs tsv]:bool:(t f)' \
  'mincount=-[only print kmers with at least this depth]:int:' \
  'reads=-[process only this number of reads]:int:' \
  'k=-[kmer length]:int:' \
  'prealloc=-[pre-allocate memory]:bool:(t f)' \
  'prefilter=-[ignore kmers with depth at or below this]:int:' \
  'minprob=-[ignore kmers below this probability]:float:' \
  'threads=-[number of hashing threads]:threads:' \
  'rcomp=-[count kmer and its reverse-complement together]:bool:(t f)' \
  'khist=-[print kmer frequency histogram]:file:_files' \
  'peaks=-[write peaks to this file]:file:_files' \
  'ploidy=-[specify ploidy]:int:' \
  'qtrim=-[quality trim read ends]:mode:(t f r l)' \
  'trimq=-[trim quality threshold]:int:' \
  'merge=-[merge reads before counting kmers]:bool:(t f)' \
  '*:file:_files' && ret=0

return ret
