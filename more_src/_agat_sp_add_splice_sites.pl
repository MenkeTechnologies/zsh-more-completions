#compdef agat_sp_add_splice_sites.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_add_splice_sites.html
# AGAT: add splice site features to a GFF/GTF annotation

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --gff --ref -reffile)'{-f,--gff,--ref,-reffile}'=[input GTF/GFF file]:gff file:_files' \
  '(-o --out --output)'{-o,--out,--output}'=[output file (default GFF3)]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
