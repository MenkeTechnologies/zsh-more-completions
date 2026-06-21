#compdef agat_sp_filter_by_locus_distance.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_filter_by_locus_distance.html
# AGAT: filter or flag loci that are too close to each other

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-gff=[input GTF/GFF file]:gff file:_files' \
  '(-d --dist)'{-d,--dist}'=[minimum inter-loci distance allowed]:distance:' \
  '(--add --add_flag)'{--add,--add_flag}'[add low_dist flag instead of filtering]' \
  '(-o --output --out --outfile)'{-o,--output,--out,--outfile}'=[output GFF file]:output:_files' \
  '-v[verbose for debugging]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
