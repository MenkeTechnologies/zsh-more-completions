#compdef csparc2star.py
# Documentation: https://github.com/asarnow/pyem/wiki
# pyem: convert cryoSPARC metadata (.cs) to RELION .star

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--movies[output movies star]' \
  '--boxsize=[box size in pixels]:size:' \
  '--class=[class number to keep]:cls:' \
  '--minphic=[minimum phic]:val:' \
  '--stack-path=[path to particle stack]:path:_files' \
  '--micrograph-path=[micrograph path]:path:_files' \
  '--copy-micrograph-coordinates[copy micrograph coordinates]' \
  '(--swapxy --noswapxy)--swapxy[swap X and Y]' \
  '(--swapxy --noswapxy)--noswapxy[do not swap X and Y]' \
  '--invertx[invert X]' \
  '--inverty[invert Y]' \
  '--flipy[flip Y]' \
  '--flipy-pose[flip Y pose]' \
  '--flipy-ctf[flip Y CTF]' \
  '--cached[use cached]' \
  '--transform=[apply transform]:matrix:' \
  {--relion2,-r2}'[output RELION 2 format]' \
  '--strip-uid[strip UID]' \
  '--10k[use first 10k]' \
  '--allow-pickle[allow pickle in numpy load]' \
  '--max-header-size=[max header size]:n:' \
  '(-l --loglevel)'{-l,--loglevel}'=[log level]:level:' \
  '*:input:_files' && ret=0

return ret
