#compdef agat_sp_manage_introns.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_manage_introns.html
# AGAT: analyze intron sizes and optionally plot distribution

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --gff --ref -reffile)'{-f,--gff,--ref,-reffile}'=[input GTF/GFF file (repeatable)]:gff file:_files' \
  '(-w --window --break --breaks -b)'{-w,--window,--break,--breaks,-b}'=[histogram breaks (default 1000)]:breaks:' \
  '(-x --p)'{-x,--p}'=[percentage of longest introns to remove]:percent:' \
  '--plot[create a pdf histogram of intron sizes]' \
  '(-o --out --output)'{-o,--out,--output}'=[output GFF3 file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
