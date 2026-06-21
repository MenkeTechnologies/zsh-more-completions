#compdef e2buildstacks.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2buildstacks.html
# Combines multiple image files into a single output file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--output=[output stack filename (defaults to .hdf)]:file:_files' \
  '--tilts[store results in the tiltseries directory]' \
  '--guess[auto-detect tilt series grouping and ordering]' \
  '--guesscol=[column index for separating tilt series]:n' \
  '--ppid=[set parent process PID]:pid' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '--tltang=[text file containing tilt angles for sorting]:file:_files' \
  '*:image file:_files' && ret=0

return ret
