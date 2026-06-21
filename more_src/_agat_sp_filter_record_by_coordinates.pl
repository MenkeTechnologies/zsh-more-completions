#compdef agat_sp_filter_record_by_coordinates.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_filter_record_by_coordinates.html
# AGAT: filter records by coordinate ranges from a TSV file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-i --input --gtf --gff)'{-i,--input,--gtf,--gff}'=[input GTF/GFF file]:gff file:_files' \
  '(--coordinates --tsv -r --ranges)'{--coordinates,--tsv,-r,--ranges}'=[TSV file with coordinate ranges]:tsv:_files' \
  '(-e --exclude)'{-e,--exclude}'[keep only features fully contained, exclude overlapping]' \
  '(-o --output)'{-o,--output}'=[output folder]:output:_files -/' \
  '(-v --verbose)'{-v,--verbose}'[add verbosity]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
