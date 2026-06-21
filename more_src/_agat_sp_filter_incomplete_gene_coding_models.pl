#compdef agat_sp_filter_incomplete_gene_coding_models.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_filter_incomplete_gene_coding_models.html
# AGAT: filter incomplete gene coding models (missing start/stop)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-gff=[input GTF/GFF file]:gff file:_files' \
  '(-fa --fasta)'{-fa,--fasta}'=[genome fasta file]:fasta:_files' \
  '(--ct --table --codon)'{--ct,--table,--codon}'=[codon table (default 1)]:table:' \
  '(--ad --add_flag)'{--ad,--add_flag}'[add flag instead of two output files]' \
  '(--skip_start_check --sstartc)'{--skip_start_check,--sstartc}'[do not require a start codon]' \
  '(--skip_stop_check --sstopc)'{--skip_stop_check,--sstopc}'[do not require a stop codon]' \
  '(-o --output --out --outfile)'{-o,--output,--out,--outfile}'=[output GFF file]:output:_files' \
  '-v[verbose for debugging]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
