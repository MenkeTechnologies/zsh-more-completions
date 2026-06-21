#compdef bbsplitpairs.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/bb-tools-user-guide/
# BBSplitPairs: separate paired reads from singletons and fix corrupted interleaving

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input file (stdin, fasta or fastq)]:file:_files' \
  'in2=[second read file when pairs are in separate files]:file:_files' \
  'out=[output file for paired reads (stdout)]:file:_files' \
  'out2=[separate output file for second read of pairs]:file:_files' \
  'outsingle=[output file for singleton reads]:file:_files' \
  'outs=[output file for singleton reads]:file:_files' \
  'overwrite=[set false to prevent overwriting]:bool:(t f)' \
  'ow=[set false to prevent overwriting]:bool:(t f)' \
  'showspeed=[suppress processing speed display]:bool:(t f)' \
  'ss=[suppress processing speed display]:bool:(t f)' \
  'interleaved=[force fastq input to be paired and interleaved]:mode:(t f)' \
  'int=[force fastq input to be paired and interleaved]:mode:(t f)' \
  'qtrim=[quality trimming mode]:mode:(rl f r l)' \
  'trimq=[quality threshold for trimming]:q:' \
  'minlen=[minimum read length after trimming]:len:' \
  'ml=[minimum read length after trimming]:len:' \
  'ziplevel=[compression level 1-9]:level:(1 2 3 4 5 6 7 8 9)' \
  'zl=[compression level 1-9]:level:(1 2 3 4 5 6 7 8 9)' \
  'fixinterleaving=[fix corrupted interleaved files via pair names]:bool:(t f)' \
  'fint=[fix corrupted interleaved files via pair names]:bool:(t f)' \
  'repair=[fix corrupted paired reads via read names]:bool:(t f)' \
  'rp=[fix corrupted paired reads via read names]:bool:(t f)' \
  'ain=[allow identical names instead of requiring /1 /2]:bool:(t f)' \
  'allowidenticalnames=[allow identical names instead of /1 /2]:bool:(t f)' \
  '*:file:_files' && ret=0

return ret
