#compdef ncm.py
# Documentation: https://github.com/parklab/NGSCheckMate
# NGSCheckMate sample matching from BAM or VCF input

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-B[input is BAM files]' \
  '-V[input is VCF files]' \
  '-d[input directory]:dir:_files -/' \
  '-l[input list file]:file:_files' \
  '-bed[SNP locations in BED format]:file:_files' \
  '-O[output directory]:dir:_files -/' \
  '-N[output file prefix]:prefix' \
  '-f[use strict VAF correlation cutoffs]' \
  '-nz[use mean of non-zero depths as reference]' \
  '*:file:_files' && ret=0

return ret
