#compdef w90spn2spn.x
# Documentation: https://wannier90.readthedocs.io/en/latest/user_guide/appendices/utilities/
# Wannier90 convert .spn files between formatted and unformatted

local ret=1

_arguments -s -S \
  '(-export -u2f)'{-export,-u2f}'[convert unformatted .spn to portable formatted .spn.fmt]' \
  '(-import -f2u)'{-import,-f2u}'[convert formatted .spn.fmt back to unformatted .spn]' \
  '*:seedname:_files' && ret=0

return ret
