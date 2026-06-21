#compdef agat_sp_flag_short_introns.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_flag_short_introns.html
# AGAT: flag genes containing short introns

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --gff --ref -reffile)'{-f,--gff,--ref,-reffile}'=[input GTF/GFF file]:gff file:_files' \
  '(-i --intron_size)'{-i,--intron_size}'=[minimum intron length (default 10 nt)]:size:' \
  '(-o --out --output)'{-o,--out,--output}'=[output GFF3 file]:output:_files' \
  '-v[verbose for debugging]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
