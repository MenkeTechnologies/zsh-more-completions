#compdef agat_sp_fix_cds_phases.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_fix_cds_phases.html
# AGAT: recompute and fix CDS phases

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-g --gff -ref)'{-g,--gff,-ref}'=[input GTF/GFF file]:gff file:_files' \
  '(-fa --fasta)'{-fa,--fasta}'=[input sequence fasta file]:fasta:_files' \
  '(-v --verbose)'{-v,--verbose}'[add verbosity]' \
  '(-o --output)'{-o,--output}'=[output GFF file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
