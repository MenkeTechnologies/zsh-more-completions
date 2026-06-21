#compdef write_pdwf_projectors.py
# Documentation: https://wannier90.readthedocs.io/en/latest/user_guide/appendices/utilities/
# Wannier90 utility to write PDWF projectors: write_pdwf_projectors.py UPF_filename

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:UPF file:_files' && ret=0

return ret
