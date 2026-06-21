#compdef bbest.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/bb-tools-user-guide/
# BBEst: calculate EST (expressed sequence tag) mapping statistics from a SAM file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[SAM file (or stdin) containing mapped ests]:file:_files' \
  'out=[output stats file (default stdout)]:file:_files' \
  'ref=[reference file (optional)]:file:_files' \
  'est=[est fasta file (optional)]:file:_files' \
  'fraction=[min fraction of bases mapped for all-mapped class]:value:' \
  '*:file:_files' && ret=0

return ret
