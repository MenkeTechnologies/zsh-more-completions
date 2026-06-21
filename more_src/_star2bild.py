#compdef star2bild.py
# Documentation: https://github.com/asarnow/pyem/wiki
# pyem: generate Chimera .bild orientation distribution from a .star file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--healpix-order=[healpix order]:n:' \
  '--apix=[pixel size in Angstroms]:apix:' \
  '--boxsize=[box size in pixels]:size:' \
  '--height-scale=[height scale]:val:' \
  '--width-scale=[width scale]:val:' \
  '--class=[class number]:cls:' \
  '--sym=[symmetry group]:sym:' \
  '(-l --loglevel)'{-l,--loglevel}'=[log level]:level:' \
  '1:input:_files' \
  '2:output:_files' && ret=0

return ret
