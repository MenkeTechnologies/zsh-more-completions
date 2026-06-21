#compdef agat_sp_filter_gene_by_intron_numbers.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_filter_gene_by_intron_numbers.html
# AGAT: filter genes by their number of introns

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --reffile --gff -ref)'{-f,--reffile,--gff,-ref}'=[input GFF3 file]:gff file:_files' \
  '(-n --nb --number)'{-n,--nb,--number}'=[number of introns (default 0)]:number:' \
  '(-t --test)'{-t,--test}'=[test to apply (>, <, =, >=, <=)]:test:' \
  '(-o --output)'{-o,--output}'=[output GFF file]:output:_files' \
  '-v[verbose for debugging]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
