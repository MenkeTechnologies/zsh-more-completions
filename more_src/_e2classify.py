#compdef e2classify.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2classify.html
# Analyzes similarity matrices from e2simmx.py to produce classification matrices

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--sep=[number of classes a particle can contribute towards]:n' \
  '--simvec[use similarity pattern for orientation assignment]' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '--nofilecheck[disable file checking]' \
  '(-c --check)'{-c,--check}'[perform argument validation only]' \
  '--noalign[ignore alignment information]' \
  '--ppid=[set parent process PID]:pid' \
  '*:file:_files' && ret=0

return ret
