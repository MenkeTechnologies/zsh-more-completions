#compdef PL_assess.x
# Documentation: https://wannier90.readthedocs.io/en/latest/user_guide/appendices/utilities/
# Wannier90 utility to assess principal-layer convergence: PL_assess.x nk1 nk2 nk3 num_wann

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:nk1:' \
  '2:nk2:' \
  '3:nk3:' \
  '4:num_wann:' && ret=0

return ret
