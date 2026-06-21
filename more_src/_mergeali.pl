#compdef mergeali.pl
# Documentation: https://github.com/soedinglab/hh-suite/wiki
# mergeali.pl: merge slave A3M alignments into a master alignment in A3M format

local ret=1

_arguments -s -S \
  '-all[match states are all columns with a residue in either seed sequence]' \
  '-first[match states are all columns with a residue in the first seed sequence]' \
  '-d+[directories where to find the a3m alignments]:dirs:_files -/' \
  '-mark[mark seed sequences of slave MSAs in master alignment]' \
  '-diff+[use only the most different sequences from each alignment]:int' \
  '-name+[write a name line as first line into the output]:name' \
  '-full[use full-length sequence for first seed sequence]' \
  '-v+[verbose mode]:level:(0 1 2)' \
  '1:input master FASTA file:_files' \
  '2:output a3m file:_files' && ret=0

return ret
