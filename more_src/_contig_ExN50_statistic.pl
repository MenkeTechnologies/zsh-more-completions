#compdef contig_ExN50_statistic.pl
# Documentation: https://raw.githubusercontent.com/trinityrnaseq/trinityrnaseq/master/util/misc/contig_ExN50_statistic.pl
# Trinity util: compute ExN50 statistic from expression matrix and fasta

local ret=1

_arguments -s -S \
  '1:isoform expression matrix:_files' \
  '2:Trinity fasta file:_files' \
  '3:feature type:(transcript gene)' && ret=0

return ret
