#compdef vaf_ncm.py
# Documentation: https://github.com/parklab/NGSCheckMate
# NGSCheckMate VAF-based matching from precomputed VAF files

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-I[input directory with VAF files]:dir:_files -/' \
  '-O[output directory]:dir:_files -/' \
  '-N[output file prefix]:prefix' \
  '-nz[use mean of non-zero depths]' \
  '*:file:_files' && ret=0

return ret
