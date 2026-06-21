#compdef e2evalparticles.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/programs/e2evalparticles.py
# EMAN2: GUI for evaluating and selecting particle sets

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--gui[start the GUI for interactive use]' \
  '--ppid=[set PID of parent process]:pid:' \
  '(-v --verbose)'{-v,--verbose}'=[verbose level 0-9]:level:' \
  '*:file:_files' && ret=0

return ret
