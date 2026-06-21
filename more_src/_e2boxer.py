#compdef e2boxer.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2boxer.html
# Interactive and automatic particle picker for single particle analysis

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--allmicrographs[include all images from micrographs folder]' \
  '--unboxedonly[process only images without existing box locations]' \
  '(-B --boxsize)'{-B,--boxsize}'=[box size in pixels]:size' \
  '(-P --ptclsize)'{-P,--ptclsize}'=[longest particle axis in pixels]:size' \
  '--compressbits=[bits retained for compressed images, 0=lossless]:n' \
  '--write_dbbox[export particle locations to EMAN1 .box files]' \
  '--write_ptcls[extract and save selected particles to disk]' \
  '--invert[reverse image contrast, particles must appear white]' \
  '--no_ctf[skip CTF determination]' \
  '--suffix=[micrograph filename suffix for particle picking]:suffix' \
  '--apix=[angstroms per pixel]:apix' \
  '--voltage=[microscope voltage in kV]:kv' \
  '--cs=[spherical aberration coefficient]:cs' \
  '--ac=[amplitude contrast percentage (default 10)]:pct' \
  '--autopick=[automatic picking mode and parameters]:mode' \
  '--gui[launch interactive graphical interface]' \
  '--threads=[number of parallel processing threads]:n' \
  '--ppid=[set parent process PID]:pid' \
  '--device=[GPU selection for neural network training]:device' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '*:micrograph:_files' && ret=0

return ret
