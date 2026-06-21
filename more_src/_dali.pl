#compdef dali.pl
# Documentation: http://ekhidna2.biocenter.helsinki.fi/dali/README.v5.html
# DaliLite.v5 dali.pl - pairwise, all-against-all and database structural alignment

local ret=1

_arguments -s -S \
  '--pdbfile[PDB structure file to align]:file:_files' \
  '--cd1[chain identifier of structure 1]:id' \
  '--cd2[chain identifier of structure 2]:id' \
  '--dat1[data directory for structure 1]:dir:_files -/' \
  '--dat2[data directory for structure 2]:dir:_files -/' \
  '--query[file listing query structure identifiers]:file:_files' \
  '--db[file listing subject (database) structure identifiers]:file:_files' \
  '--np[number of parallel processes]:n' \
  '--outfmt[output format]:fmt' \
  '--clean[remove temporary files after run]' \
  '*:file:_files' && ret=0

return ret
