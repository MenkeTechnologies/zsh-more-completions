#compdef addss.pl
# Documentation: https://github.com/soedinglab/hh-suite/wiki
# addss.pl: add PSIPRED secondary structure prediction to an MSA or HMMER model file

local ret=1

_arguments -s -S \
  '-i+[input alignment or HMMER model file]:input file:_files' \
  '-o+[output file]:output file:_files' \
  '-fas[input is A2M/FASTA format]' \
  '-a2m[input is A2M format]' \
  '-a3m[input is A3M format]' \
  '-clu[input is CLUSTAL format]' \
  '-sto[input is STOCKHOLM format]' \
  '-hmm[input contains HMMER models]' \
  '-v+[verbose mode]:level:(0 1 2)' \
  '*:file:_files' && ret=0

return ret
