#compdef k_mapper.py
# Documentation: https://wannier90.readthedocs.io/en/latest/user_guide/appendices/utilities/
# Wannier90 utility to map k points: k_mapper.py nx ny nz QE_nscf_output

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:nx:' \
  '2:ny:' \
  '3:nz:' \
  '4:QE nscf output:_files' && ret=0

return ret
