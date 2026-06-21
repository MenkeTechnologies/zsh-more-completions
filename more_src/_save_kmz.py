#compdef save_kmz.py
# Documentation: https://mintpy.readthedocs.io/en/latest/api/cli/
# MintPy generate Google Earth KMZ from a geocoded raster

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-m --mask)'{-m,--mask}'[mask file for display]:file:_files' \
  '--zero-mask[mask pixels with zero value]' \
  '(-o --output)'{-o,--output}'[output file base name (extension: .kmz)]:file:_files' \
  '(--kk --keep-kml)'{--kk,--keep-kml}'[do not remove KML files after compression]' \
  '(-g --geom)'{-g,--geom}'[geometry file with lat/lon (radar coords)]:file:_files' \
  '--step[output one point per N pixels (default: 5)]:n:' \
  '(-v --vlim)'{-v,--vlim}'[Y/value limits for plotting]:vlim:' \
  '(-u --unit)'{-u,--unit}'[unit for display (default: cm/year)]:unit:' \
  '(-c --cm --colormap)'{-c,--cm,--colormap}'[colormap name (default: jet)]:cmap:' \
  '--wrap[re-wrap data to display fringes]' \
  '--wrap-range[range of one cycle (default: -pi to pi)]:range:' \
  '--dpi[figure DPI (default: 600)]:dpi:' \
  '--figsize[figure size in inches]:size:' \
  '--cbar-loc[colorbar location (default: lower left)]:loc:' \
  '--cbar-label[colorbar label]:label:' \
  '--cbar-bin-num[colorbar bin number]:num:' \
  '--noreference[do not show reference point]' \
  '--ref-color[reference point marker color (default: k)]:color:' \
  '--ref-size[reference point marker size (default: 5)]:size:' \
  '--ref-marker[reference point marker symbol (default: s)]:marker:' \
  '*:file:_files' && ret=0

return ret
