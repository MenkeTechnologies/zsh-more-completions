#compdef create_profile_from_hhm.pl
# Documentation: https://github.com/soedinglab/hh-suite/wiki
# create_profile_from_hhm.pl: convert an HHM file into a prf-format profile

local ret=1

_arguments -s -S \
  '-i+[input file in HHM format]:hhm file:_files' \
  '-o+[output file in prf format]:prf file:_files' && ret=0

return ret
