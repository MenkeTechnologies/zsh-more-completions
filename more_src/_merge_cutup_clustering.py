#compdef merge_cutup_clustering.py
# Documentation: https://github.com/BinPro/CONCOCT/blob/develop/scripts/merge_cutup_clustering.py
# CONCOCT - merge subcontig clustering results back to original contigs

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:cutup_clustering_result:_files' && ret=0

return ret
