#compdef renumberpdb.pl
# Documentation: https://github.com/soedinglab/hh-suite/wiki
# renumberpdb.pl: adjust PDB file indices to match input sequence positions

local ret=1

_arguments -s -S \
  '-o+[output file]:pdb file:_files' \
  '-d+[directory of pdb files]:dir:_files -/' \
  '-a+[filter alternative location identifier]:id:(A B)' \
  '1:input file:_files' \
  '2:output file:_files' && ret=0

return ret
