#compdef filter_low_expr_transcripts.pl
# Documentation: https://raw.githubusercontent.com/trinityrnaseq/trinityrnaseq/master/util/filter_low_expr_transcripts.pl
# Trinity util: filter transcripts by expression and isoform dominance

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-m --matrix)'{-m,--matrix=}'[expression matrix (TPM or FPKM)]:file:_files' \
  '(-t --transcripts)'{-t,--transcripts=}'[transcripts fasta file]:file:_files' \
  '--min_expr_any=[min expression across any sample]:float:' \
  '--min_pct_dom_iso=[min percent of dominant isoform]:int:' \
  '--highest_iso_only[retain only highest-expressed isoform per gene]' \
  '--trinity_mode[parse Trinity transcript identifiers]' \
  '--gene_to_trans_map=[gene-to-transcript mapping file]:file:_files' \
  '*:file:_files' && ret=0

return ret
