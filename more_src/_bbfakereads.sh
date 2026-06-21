#compdef bbfakereads.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/bb-tools-user-guide/
# BBFakeReads: generate fake paired reads from a fasta/fastq file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'ow=[overwrite files that already exist]:bool:(t f)' \
  'zl=[compression level, 1 (low) to 9 (max)]:level:(1 2 3 4 5 6 7 8 9)' \
  'fastawrap=[length of lines in fasta output]:length:' \
  'tuc=[change lowercase letters in reads to uppercase]:bool:(t f)' \
  'qin=[ASCII offset for input quality]:offset:(auto 33 64)' \
  'qout=[ASCII offset for output quality]:offset:(auto 33 64)' \
  'qfin=[read qualities from a qual file for input fasta]:file:_files' \
  'qfout=[write qualities to a qual file for output fasta]:file:_files' \
  'qfout2=[write qualities to a qual file for second output]:file:_files' \
  'verifyinterleaved=[check if file names look paired]:bool:(t f)' \
  'tossbrokenreads=[discard reads with mismatched bases/qualities]:bool:(t f)' \
  'length=[generate reads of this length]:len:' \
  'minlength=[do not generate reads shorter than this]:len:' \
  'overlap=[create variable-length reads overlapping by this]:n:' \
  'identifier=[prefix for output read names]:name:' \
  'addspace=[set false to omit space before /1 and /2]:bool:(t f)' \
  '*:file:_files' && ret=0

return ret
