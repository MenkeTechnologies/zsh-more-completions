#compdef bbmask.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/bb-tools-user-guide/
# BBMask: mask repeats, low-complexity, or low/high-coverage regions in sequences

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input sequences to mask]:file:_files' \
  'out=[write masked sequences here]:file:_files' \
  'sam=[comma-delimited SAM files for masking mapped coordinates]:files:_files' \
  'touppercase=[change all letters to upper-case]:bool:(t f)' \
  'interleaved=[force fastq input to be paired and interleaved]:mode:(auto t f)' \
  'qin=[ASCII offset for input quality]:offset:(auto 33 64)' \
  'qout=[ASCII offset for output quality]:offset:(auto 33 64)' \
  'overwrite=[abort rather than overwrite existing file]:bool:(t f)' \
  'ziplevel=[compression level from 1 to 9]:level:(1 2 3 4 5 6 7 8 9)' \
  'fastawrap=[length of lines in fasta output]:length:' \
  'threads=[number of threads to use]:threads:' \
  'maskrepeats=[mask areas covered by exact repeat kmers]:bool:(t f)' \
  'kr=[kmer size for repeat detection]:k:' \
  'minlen=[minimum length of repeat area to mask]:len:' \
  'mincount=[minimum number of repeats to mask]:count:' \
  'masklowentropy=[mask areas with low complexity]:bool:(t f)' \
  'ke=[kmer size for entropy calculation]:k:' \
  'window=[window size for entropy calculation]:size:' \
  'entropy=[entropy threshold for masking]:value:' \
  'lowercase=[convert masked bases to lower case]:bool:(t f)' \
  'split=[split into unmasked pieces and discard masked]:bool:(t f)' \
  'mincov=[minimum coverage threshold for masking]:cov:' \
  'maxcov=[maximum coverage threshold for masking]:cov:' \
  'delcov=[include deletions when calculating coverage]:bool:(t f)' \
  'pigz=[use pigz for compression]:bool:(t f)' \
  'unpigz=[use pigz for decompression]:bool:(t f)' \
  '*:file:_files' && ret=0

return ret
