#compdef agat_sp_functional_statistics.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_functional_statistics.html
# AGAT: statistics about the functional annotation of a GFF

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --gff)'{-f,--gff}'=[input GTF/GFF file]:gff file:_files' \
  '(-g --gs)'{-g,--gs}'=[genome size (nucleotides or fasta)]:genome:_files' \
  '(-o --output)'{-o,--output}'=[output folder (default output_functional_statistics)]:output:_files -/' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
