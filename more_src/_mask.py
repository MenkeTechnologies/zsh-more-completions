#compdef mask.py
# Documentation: https://mintpy.readthedocs.io/en/latest/api/cli/
# MintPy mask out portions of a file by mask value or subset range

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-m --mask)'{-m,--mask}'[mask out pixels with mask value == 0]:file:_files' \
  '(-o --outfile)'{-o,--outfile}'[output file name]:file:_files' \
  '(--vmin --mask-vmin)'{--vmin,--mask-vmin}'[mask out pixels with mask value < vmin]:vmin:' \
  '(--vmax --mask-vmax)'{--vmax,--mask-vmax}'[mask out pixels with mask value > vmax]:vmax:' \
  '-x[subset range in x/cross-track/column direction]:x:' \
  '-y[subset range in y/along-track/row direction]:y:' \
  '--fill[fill masked areas with value (default: nan)]:value:' \
  '*:file:_files' && ret=0

return ret
