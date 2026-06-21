#compdef abundance_estimates_to_matrix.pl
# Documentation: https://github.com/trinityrnaseq/trinityrnaseq/wiki/Trinity-Transcript-Quantification
# Trinity util: build expression matrix from abundance estimates

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--est_method=[estimation method]:method:(RSEM kallisto salmon)' \
  '--gene_trans_map=[gene-to-transcript mapping file (or none)]:file:_files' \
  '--quant_files=[file listing target abundance files]:file:_files' \
  '--cross_sample_norm=[cross-sample normalization method]:method:(TMM UpperQuartile none)' \
  '--name_sample_by_basedir[name samples by directory name]' \
  '--basedir_index=[directory index for naming]:n:' \
  '--out_prefix=[output file prefix]:prefix:' \
  '*:abundance file:_files' && ret=0

return ret
