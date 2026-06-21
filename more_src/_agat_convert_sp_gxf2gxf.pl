#compdef agat_convert_sp_gxf2gxf.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_convert_sp_gxf2gxf.html
# AGAT: fix and standardize any GTF/GFF file into a clean GFF3

local ret=1

_arguments -s -S \
  '(-g --gff -ref)'{-g,--gff,-ref}'=[input GTF/GFF file (.gz accepted)]:file:_files' \
  '-v=[verbosity level (0 quiet, default 1)]:level:(0 1 2 3)' \
  '(-o --output)'{-o,--output}'=[output GFF file (default STDOUT)]:file:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:file:_files' \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:file:_files' && ret=0

return ret
