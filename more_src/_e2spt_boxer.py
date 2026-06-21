#compdef e2spt_boxer.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2spt_boxer.html
# Box particles from tomograms, supports multiple simultaneous features

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--box2d[boxing 2D particles from tomograms]' \
  '--box3d[boxing 3D particles from tomograms (default)]' \
  '--ppid=[set parent process PID]:pid' \
  '*:tomogram:_files' && ret=0

return ret
