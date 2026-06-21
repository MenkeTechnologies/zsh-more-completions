#compdef agat_sp_filter_by_mrnaBlastValue.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_filter_by_mrnaBlastValue.html
# AGAT: filter mRNA based on all-vs-all blast values

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--gff=[input GTF/GFF file]:gff file:_files' \
  '--blast=[all-vs-all blast file (outfmt 6, blastp)]:blast:_files' \
  '--outfile=[output file (default STDOUT)]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
