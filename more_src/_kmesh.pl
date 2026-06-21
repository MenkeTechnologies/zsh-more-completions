#compdef kmesh.pl
# Documentation: https://wannier90.readthedocs.io/en/latest/user_guide/appendices/utilities/
# Wannier90 generate Monkhorst-Pack k-point grids for the .win file

local ret=1

_arguments -s -S \
  '1:nx:' \
  '2:ny:' \
  '3:nz:' \
  '4:format:(wannier)' && ret=0

return ret
