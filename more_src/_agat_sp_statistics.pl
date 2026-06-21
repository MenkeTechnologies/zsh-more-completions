#compdef agat_sp_statistics.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_statistics.html
# AGAT: compute statistics from a GTF/GFF annotation file

local ret=1

_arguments -s -S \
  '(--gff -i)'{--gff,-i}'=[input GTF/GFF file]:file:_files' \
  '(--gs -f -g)'{--gs,-f,-g}'=[genome size (nucleotides) or fasta file]:size:_files' \
  '(-d -p)'{-d,-p}'[print feature distribution histograms to pdf]' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity (0 quiet, default 1)]:level:(0 1 2 3)' \
  '(-o --output)'{-o,--output}'=[output file (default STDOUT)]:file:_files' \
  '--yaml[also print a yaml output]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:file:_files' \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:file:_files' && ret=0

return ret
