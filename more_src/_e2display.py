#compdef e2display.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2display.html
# Visualizes most files used in EMAN2

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--classmx=[display particles in one class from a classification matrix]:classmx' \
  '--classes=[show particles associated with class-averages]:rawptcl' \
  '--pdb=[display PDB structure]:file:_files' \
  '--singleimage[display a stack in a single image view]' \
  '--server[launch a display server for EMAN3 communication]' \
  '--serverport=[listening port (default 31980)]:port' \
  '--plot[plot data files rather than 2-D display]' \
  '--hist[plot data files as histograms]' \
  '--plot3d[plot data files in 3-D]' \
  '--fullrange[disable auto contrast for stacks and 2D images]' \
  '--newwidget[use the new 3D widget]' \
  '--ppid=[set parent process PID]:pid' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '*:file:_files' && ret=0

return ret
