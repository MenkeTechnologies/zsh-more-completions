#compdef analyze_diff_expr.pl
# Documentation: https://github.com/trinityrnaseq/trinityrnaseq/wiki/Trinity-Differential-Expression
# Trinity util: extract and cluster differentially expressed transcripts

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--matrix=[TMM-normalized expression matrix]:file:_files' \
  '-P[p-value cutoff for FDR]:float:' \
  '-C[min absolute log2 fold-change]:float:' \
  '--output=[output file prefix]:prefix:' \
  '--samples=[sample-to-replicate mapping file]:file:_files' \
  '--max_DE_genes_per_comparison=[limit top DE features per comparison]:n:' \
  '--order_columns_by_samples_file[order columns by samples file]' \
  '--max_genes_clust=[skip heatmap if features exceed]:n:' \
  '*:file:_files' && ret=0

return ret
