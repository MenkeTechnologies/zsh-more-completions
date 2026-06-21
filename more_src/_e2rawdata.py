#compdef e2rawdata.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/programs/e2rawdata.py
# EMAN2: import and filter raw micrographs into a project

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--invert[invert contrast]' \
  '--compressbits=[bits to keep when writing images]:n:' \
  '--edgenorm[edge normalize]' \
  '--usefoldername[prepend folder name on each image name]' \
  '--xraypixel[filter X-ray pixels]' \
  '--ctfest[perform CTF fitting on the tiled frame]' \
  '--phaseplate[include phase/amplitude contrast in CTF estimation]' \
  '--astigmatism[include astigmatism in automatic fitting]' \
  '--moverawdata[move raw data to raw_micrographs after filtration]' \
  '--apix=[angstroms per pixel for all images]:apix:' \
  '--voltage=[microscope voltage in KV]:kv:' \
  '--cs=[microscope Cs spherical aberration]:cs:' \
  '--ac=[amplitude contrast percentage]:pct:' \
  '--threads=[number of threads to run in parallel]:n:' \
  '--defocusmin=[minimum autofit defocus]:um:' \
  '--defocusmax=[maximum autofit defocus]:um:' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity 0-9]:level:' \
  '--ppid=[set PID of parent process]:pid:' \
  '*:micrograph:_files' && ret=0

return ret
