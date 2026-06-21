#compdef agat_sp_flag_premature_stop_codons.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_flag_premature_stop_codons.html
# AGAT: flag genes with premature stop codons

local ret=1

_arguments -s -S \
  '(--gff --ref -reffile)'{--gff,--ref,-reffile}'=[input GTF/GFF file]:file:_files' \
  '(-f --fa --fasta)'{-f,--fa,--fasta}'=[input fasta file]:file:_files' \
  '(--ct --codon --table)'{--ct,--codon,--table}'=[codon table to use (default 1)]:table:' \
  '(-o --out --output)'{-o,--out,--output}'=[output gff3 file]:file:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:file:_files' \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:file:_files' && ret=0

return ret
