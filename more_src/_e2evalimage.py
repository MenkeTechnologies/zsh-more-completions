#compdef e2evalimage.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2evalimage.html
# Analyzes individual scanned micrographs or CCD frames via power spectrum

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--gui[GUI-only program]' \
  '--apix=[angstroms per pixel for all images]:apix' \
  '--constbfactor=[fixed B-factor, negative triggers autofitting]:val' \
  '--voltage=[microscope voltage in kV]:kv' \
  '--cs=[spherical aberration coefficient]:cs' \
  '--ac=[amplitude contrast percentage (default 10)]:pct' \
  '--phaseplate[phase/amplitude contrast for hole-less phase plates]' \
  '--astigmatism[enable astigmatism in automatic fitting]' \
  '--box=[forced box size in grid mode]:n' \
  '--usefoldername[prepend folder name to image filenames]' \
  '--ppid=[set parent process PID]:pid' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '*:image file:_files' && ret=0

return ret
