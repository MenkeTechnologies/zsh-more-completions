#compdef define_clusters_by_cutting_tree.pl
# Documentation: https://raw.githubusercontent.com/trinityrnaseq/trinityrnaseq/master/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl
# Trinity util: define expression clusters by cutting hierarchical tree

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '-K[define K clusters via k-means]:int:' \
  '--Ktree=[cut tree into K clusters]:int:' \
  '--Ptree=[cut tree at percent of max tree height]:float:' \
  '-R[RData filename]:file:_files' \
  '--lexical_column_ordering[reorder columns by lexical ordering]' \
  '--no_column_reordering[disable column reordering]' \
  '*:file:_files' && ret=0

return ret
