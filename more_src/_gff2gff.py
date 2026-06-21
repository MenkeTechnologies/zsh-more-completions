#compdef gff2gff.py
# Documentation: https://raw.githubusercontent.com/samtools/bcftools/develop/misc/gff2gff.py
# Patch a GFF file into the format expected by bcftools csq

local ret=1

_arguments -s -S \
  '*:gff file:_files' && ret=0

return ret
