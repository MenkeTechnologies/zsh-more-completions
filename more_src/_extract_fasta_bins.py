#compdef extract_fasta_bins.py
# Documentation: https://github.com/BinPro/CONCOCT/blob/develop/scripts/extract_fasta_bins.py
# CONCOCT - extract fasta bins from cluster file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--output_path=[directory where files will be printed]:dir:_files -/' \
  '1:fasta_file:_files' \
  '2:cluster_file:_files' && ret=0

return ret
