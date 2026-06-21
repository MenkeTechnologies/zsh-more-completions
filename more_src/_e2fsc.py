#compdef e2fsc.py
# Documentation: https://github.com/cryoem/eman2/blob/master/programs/e2fsc.py
# EMAN2 compute local resolution (FSC) between two 3D maps and filter

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--output=[output .143 resolution volume]:file:_files' \
  '--outfilt=[output locally filtered average volume]:file:_files' \
  '--outfilte=[apply local filter to even map and write here]:file:_files' \
  '--outfilto=[apply local filter to odd map and write here]:file:_files' \
  '--localsize=[size in pixels of the local region]:n' \
  '--overlap=[oversampling in local resolution windows]:n' \
  '--apix=[A/pix for the comparison]:val' \
  '--cutoff=[fsc cutoff]:val' \
  '--gauss[use gaussian filter instead of tophat]' \
  '--mask=[mask applied to both inputs before calculation]:file:_files' \
  '--threads=[number of threads]:n' \
  '--ppid=[parent process id]:pid' \
  '--verbose=[verbosity level]:n' \
  '*:volume:_files' && ret=0

return ret
