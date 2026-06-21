#compdef agat_sp_list_short_introns.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_list_short_introns.html
# AGAT: list genes with short introns

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --gff --ref -reffile)'{-f,--gff,--ref,-reffile}'=[input GTF/GFF file]:gff file:_files' \
  '(-s --size)'{-s,--size}'=[minimum intron size (default 10)]:size:' \
  '(-o --out --output)'{-o,--out,--output}'=[output GFF3 file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
