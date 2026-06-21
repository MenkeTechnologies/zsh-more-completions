#compdef e2tomo_drawcurve.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/programs/e2tomo_drawcurve.py
# EMAN2: draw curves on a tomogram for particle extraction

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--nooptimize[do not optimize path]' \
  '--ppid=[set PID of parent process]:pid:' \
  '*:tomogram:_files' && ret=0

return ret
