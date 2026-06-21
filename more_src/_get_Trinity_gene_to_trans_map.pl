#compdef get_Trinity_gene_to_trans_map.pl
# Documentation: https://raw.githubusercontent.com/trinityrnaseq/trinityrnaseq/master/util/support_scripts/get_Trinity_gene_to_trans_map.pl
# Trinity util: emit gene-to-transcript map from Trinity fasta accessions

local ret=1

_arguments -s -S \
  '*:Trinity fasta file:_files' && ret=0

return ret
