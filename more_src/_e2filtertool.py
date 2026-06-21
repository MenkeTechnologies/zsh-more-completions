#compdef e2filtertool.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2filtertool.html
# GUI for applying a sequence of processors to an image, stack or volume

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--apix=[override the A/pix value in the file header]:apix' \
  '--force2d[display 3-D data as 2-D slices]' \
  '--safemode[run in safe mode without the timer]' \
  '--ppid=[set parent process PID]:pid' \
  '--idx=[index for an image in a stack]:n' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '*:image file:_files' && ret=0

return ret
