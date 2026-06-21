#compdef smallbaselineApp.py
# Documentation: https://mintpy.readthedocs.io/en/latest/api/cli/
# MintPy routine InSAR time-series analysis workflow

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(--dir --work-dir)'{--dir,--work-dir}'[work directory]:dir:_files -/' \
  '-g[generate default template (if it does not exist) and exit]' \
  '-H[print the default template file and exit]' \
  '(-v --version)'{-v,--version}'[print software version and exit]' \
  '--plot[plot results only without running smallbaselineApp]' \
  '--start[start processing at the named step]:step:' \
  '(--end --stop)'{--end,--stop}'[end processing at the named step]:step:' \
  '--dostep[run processing at the named step only]:step:' \
  '*:customTemplateFile:_files' && ret=0

return ret
