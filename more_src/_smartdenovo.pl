#compdef smartdenovo.pl
# Documentation: https://github.com/ruanjue/smartdenovo
# SMARTdenovo: de novo assembler for PacBio and Oxford Nanopore long reads

local ret=1

_arguments -s -S \
  '-p+[output prefix]:prefix' \
  '-e+[engine of overlaper (zmo or dmo)]:engine:(zmo dmo)' \
  '-t+[number of threads]:threads' \
  '-k+[k-mer length for overlapping]:kmer' \
  '-J+[min read length]:length' \
  '-c+[generate consensus]:consensus' \
  '*:reads:_files -g "*.(fa|fasta|fa.gz)"' && ret=0

return ret
