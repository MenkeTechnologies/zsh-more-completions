#compdef agat_sp_fix_overlaping_genes.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_fix_overlaping_genes.html
# AGAT: merge gene features sharing CDS/exon overlap

local ret=1

_arguments -s -S \
  '(-f --file --gff3 --gff)'{-f,--file,--gff3,--gff}'=[input GTF/GFF file]:file:_files' \
  '(-m --merge)'{-m,--merge}'[merge/add attributes of merged gene features]' \
  '(-o --out --output --outfile)'{-o,--out,--output,--outfile}'=[output file (default STDOUT)]:file:_files' \
  '(-v --verbose)'{-v,--verbose}'[add verbosity]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:file:_files' \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:file:_files' && ret=0

return ret
