#compdef sp_signalsubtract.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/sphire/sphire/bin/sp_signalsubtract.py
# SPHIRE: subtract a signal/region from particle images for focused refinement

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-v --verbosity)'{-v,--verbosity}'=[increase verbosity 0-3]:level:' \
  '--outdir=[output directory]:dir:_files -/' \
  '--apix=[pixel size Angstroms]:apix:' \
  '--avol1=[input volume #1]:file:_files' \
  '--avol2=[input volume #2]:file:_files' \
  '--filtrad=[radius for low-pass filtration]:r:' \
  '--map2mask=[map out of which to make mask]:file:_files' \
  '--fullmap=[map to which to apply mask]:file:_files' \
  '--mapthresh=[map threshold for masking]:thr:' \
  '--maskthresh=[map threshold for masking 0-1]:thr:' \
  '--ndilation=[number of dilations]:n:' \
  '--edge_width=[edge width]:n:' \
  '--masklowpass=[low-pass filter radius Angstroms]:ang:' \
  '--falloff=[low-pass filter falloff in absolute frequency]:f:' \
  '(--allow_disconnected --ad)'{--allow_disconnected,--ad}'[allow disconnected regions in the mask]' \
  '--origparts=[original particle stack]:file:_files' \
  '--map2subtract=[map to subtract]:file:_files' \
  '--projparams=[projection parameter text file]:file:_files' \
  '--nonorm[turn off normalization of images]' \
  '--nmontage=[number of test images of projections to write]:n:' \
  '--inmem[store reprojections in memory]' \
  '--saveprojs[save reprojections]' \
  '--stats[write average and sigma for input particles]' \
  '--normalize[DEPRECATED normalize subtracted images]' \
  '--cvol1=[input volume #1]:file:_files' \
  '--cvol2=[input volume #2]:file:_files' \
  '--diffimgs=[difference image stack]:file:_files' \
  '--shiftparams=[refinement parameter text file]:file:_files' \
  '--volradius=[radius of map]:r:' \
  '--prefix=[prefix for output reconstructions]:prefix:' \
  '*:mode:(avgfilt sp_mask projsubtract centershift)' && ret=0

return ret
