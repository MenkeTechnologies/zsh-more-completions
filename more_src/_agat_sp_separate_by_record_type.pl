#compdef agat_sp_separate_by_record_type.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_separate_by_record_type.html
# AGAT: separate a GFF/GTF into files by record type

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-g --gff -ref)'{-g,--gff,-ref}'=[input GTF/GFF file]:gff file:_files' \
  '(-o --output)'{-o,--output}'=[output folder (default split_result)]:output:_files -/' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
