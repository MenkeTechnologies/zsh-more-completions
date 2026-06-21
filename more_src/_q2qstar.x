#compdef q2qstar.x
# Documentation: https://github.com/QEF/q-e/blob/master/PHonon/PH/q2qstar.f90
# q2qstar.x - QE PHonon: expand a dynamical matrix to the full star of q; syntax: q2qstar.x dynfile [outfile]

local ret=1

_arguments -s -S \
  '1:dynamical matrix file:_files' \
  '2:output file:_files' && ret=0

return ret
