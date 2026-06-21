#compdef removehuman.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/bb-tools-user-guide/
# RemoveHuman: remove reads that map to the human genome

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input file (fasta or fastq, compressed or not)]:file:_files' \
  'outu=[clean output file path]:file:_files' \
  'outm=[file for reads that mapped to human genome]:file:_files' \
  'threads=[number of threads to use]:threads:' \
  't=[number of threads to use]:threads:' \
  'overwrite=[whether to overwrite existing files]:bool:(t f)' \
  'ow=[whether to overwrite existing files]:bool:(t f)' \
  'interleaved=[force paired and interleaved fastq input]:bool:(t f)' \
  'int=[force paired and interleaved fastq input]:bool:(t f)' \
  'trim=[trim read ends]:mode:(t f r l)' \
  'untrim=[undo trimming after mapping]:bool:(t f)' \
  'minq=[quality threshold for trimming]:q:' \
  'ziplevel=[compression level 1-9]:level:(1 2 3 4 5 6 7 8 9)' \
  'zl=[compression level 1-9]:level:(1 2 3 4 5 6 7 8 9)' \
  'path=[path to indexed human genome]:dir:_files -/' \
  '*:file:_files' && ret=0

return ret
