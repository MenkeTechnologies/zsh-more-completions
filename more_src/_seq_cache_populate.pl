#compdef seq_cache_populate.pl
# Documentation: https://github.com/samtools/samtools/blob/develop/misc/seq_cache_populate.pl
# import references into a CRAM reference cache from fasta files

local ret=1

_arguments -s -S \
  '-root+[directory where the cache will be built]:dir:_files -/' \
  '-subdirs+[number of subdirectories to create below the root directory]:count' \
  '-find+[scan a directory tree for FASTA files and add them to the reference cache]:dir:_files -/' \
  '*:fasta file:_files -g "*.(fa|fasta|fa.gz|fasta.gz)"' && ret=0

return ret
