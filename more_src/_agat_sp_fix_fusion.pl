#compdef agat_sp_fix_fusion.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_fix_fusion.html
# AGAT: detect and fix fused gene models

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--gff=[input GTF/GFF file]:gff file:_files' \
  '(-fa --fasta)'{-fa,--fasta}'=[input fasta file]:fasta:_files' \
  '(--ct --codon --table)'{--ct,--codon,--table}'=[codon table (default 1)]:table:' \
  '(-t --threshold)'{-t,--threshold}'=[min protein length in AA (default 100)]:threshold:' \
  '(-s --stranded)'{-s,--stranded}'[predict protein in UTR only in gene orientation]' \
  '(-v --verbose)'{-v,--verbose}'[output verbose information]' \
  '(-o --output --out --outfile)'{-o,--output,--out,--outfile}'=[output GFF file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
