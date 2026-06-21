#compdef concoct_coverage_table.py
# Documentation: https://github.com/BinPro/CONCOCT/blob/develop/scripts/concoct_coverage_table.py
# CONCOCT - generate coverage table from BED file and BAM files

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--samplenames=[file with sample names, one per line]:file:_files' \
  '1:bedfile:_files' \
  '*:bamfiles:_files' && ret=0

return ret
