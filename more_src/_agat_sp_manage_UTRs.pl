#compdef agat_sp_manage_UTRs.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_manage_UTRs.html
# AGAT: manage UTRs by exon-number threshold

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --gff --ref --reffile)'{-f,--gff,--ref,--reffile}'=[input GTF/GFF file]:gff file:_files' \
  '(-n -t --nb --number)'{-n,-t,--nb,--number}'=[UTR exon-number threshold (default 5)]:number:' \
  '(-3 --three --tree_prime_utr)'{-3,--three,--tree_prime_utr}'[apply threshold on 3prime UTR]' \
  '(-5 --five --five_prime_utr)'{-5,--five,--five_prime_utr}'[apply threshold on 5prime UTR]' \
  '(-b --both --bs)'{-b,--both,--bs}'[apply threshold on summed 3prime and 5prime UTR exons]' \
  '(--p --plot)'{--p,--plot}'[create a pdf histogram of UTR sizes]' \
  '(-o --out --output)'{-o,--out,--output}'=[output GFF3 file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
