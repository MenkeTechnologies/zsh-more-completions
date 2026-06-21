#compdef kcompress.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/kcompress.sh
# BBTools: compress reads by storing kmers in a graph

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[primary input file]:file:_files' \
  'in2=-[second input file for paired data]:file:_files' \
  'reads=-[process only this number of reads]:int:' \
  'out=-[write contigs]:file:_files' \
  'showstats=-[print assembly statistics]:bool:(t f)' \
  'fuse=-[fuse output into chunks at least this long]:int:' \
  'prefilter=-[ignore kmers with depth at or below this]:int:' \
  'prehashes=-[number of hashes for prefilter]:int:' \
  'prefiltersize=-[fraction of memory for prefilter]:float:' \
  'prepasses=-[number of prefiltering passes]:int:' \
  'k=-[kmer length 1 to 31]:int:' \
  'prealloc=-[pre-allocate memory]:bool:(t f)' \
  'minprob=-[ignore kmers below this probability]:float:' \
  'threads=-[number of threads]:threads:' \
  'mincount=-[retain kmers occurring at least this many times]:int:' \
  'maxcount=-[retain kmers occurring at most this many times]:int:' \
  'rcomp=-[store forward and reverse kmers together]:bool:(t f)' \
  '*:file:_files' && ret=0

return ret
