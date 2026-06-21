#compdef reformat.pl
# Documentation: https://github.com/soedinglab/hh-suite/wiki
# reformat.pl: read a multiple alignment in one format and write it in another

local ret=1

_arguments -s -S \
  '-v+[verbose mode]:level:(0 1)' \
  '-num[add number prefix to sequence names]' \
  '-noss[remove secondary structure sequences]' \
  '-sa[do not remove solvent accessibility sequences]' \
  '-M+[match column mode: first or percentage]:mode' \
  '-r+[remove lower case residues or gapped columns over X%%]:percent' \
  '-g+[gap handling: empty to suppress or - to write all gaps]:gap' \
  '-uc[write all residues in upper case]' \
  '-lc[write all residues in lower case]' \
  '-l+[number of residues per line]:int' \
  '-d+[maximum number of characters in nameline]:int' \
  '*:format or file:(fas a2m a3m sto psi clu)' && ret=0

return ret
