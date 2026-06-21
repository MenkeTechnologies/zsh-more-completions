#compdef agat_sp_filter_gene_by_length.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_filter_gene_by_length.html
# AGAT: filter genes by length

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --reffile --gff -ref)'{-f,--reffile,--gff,-ref}'=[input GFF3 file]:gff file:_files' \
  '(-s --size)'{-s,--size}'=[gene size in bp (default 100)]:size:' \
  '(-t --test)'{-t,--test}'=[test to apply (>, <, =, >=, <=)]:test:' \
  '(-o --output)'{-o,--output}'=[output GFF file]:output:_files' \
  '-v[verbose for debugging]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
