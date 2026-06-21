#compdef gw2wannier90.py
# Documentation: https://wannier90.readthedocs.io/en/latest/user_guide/appendices/utilities/
# Wannier90 utility to interface GW results: gw2wannier90.py seedname options

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:seedname:' \
  '*:option:(mmn amn spn unk uhu uiu spn_formatted unk_formatted uhu_formatted uiu_formatted write_formatted)' && ret=0

return ret
