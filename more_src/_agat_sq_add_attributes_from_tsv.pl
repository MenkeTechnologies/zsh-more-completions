#compdef agat_sq_add_attributes_from_tsv.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sq_add_attributes_from_tsv.html
# AGAT: add attributes to a GFF/GTF from a TSV file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--gff=[input GTF/GFF file]:gff file:_files' \
  '--tsv=[input tsv file]:tsv:_files' \
  '--csv[treat input as csv (comma-separated)]' \
  '(-v --verbose)'{-v,--verbose}'[add verbosity]' \
  '(-o --output)'{-o,--output}'=[output file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
