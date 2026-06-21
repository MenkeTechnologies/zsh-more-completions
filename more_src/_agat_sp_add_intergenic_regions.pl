#compdef agat_sp_add_intergenic_regions.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_add_intergenic_regions.html
# AGAT: add intergenic region features to a GFF/GTF annotation

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --gff --ref)'{-f,--gff,--ref}'=[input GTF/GFF file]:gff file:_files' \
  '(-o --out --output)'{-o,--out,--output}'=[output file (default GFF3)]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '(-v --verbose)'{-v,--verbose}'[add verbosity]' \
  '*:gff file:_files' && ret=0

return ret
