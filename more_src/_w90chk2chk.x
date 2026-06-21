#compdef w90chk2chk.x
# Documentation: https://wannier90.readthedocs.io/en/latest/user_guide/appendices/utilities/
# Wannier90 convert .chk checkpoint files between formatted and unformatted

local ret=1

_arguments -s -S \
  '(-export -u2f)'{-export,-u2f}'[convert unformatted .chk to portable formatted .chk.fmt]' \
  '(-import -f2u)'{-import,-f2u}'[convert formatted .chk.fmt back to unformatted .chk]' \
  '*:seedname:_files' && ret=0

return ret
