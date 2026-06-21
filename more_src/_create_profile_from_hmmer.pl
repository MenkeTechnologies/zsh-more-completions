#compdef create_profile_from_hmmer.pl
# Documentation: https://github.com/soedinglab/hh-suite/wiki
# create_profile_from_hmmer.pl: convert a HMMER/HMMER3 file into a prf-format profile

local ret=1

_arguments -s -S \
  '-i+[input file in HMMER/HMMER3 format]:hmm file:_files' \
  '-o+[output file in prf format]:prf file:_files' && ret=0

return ret
