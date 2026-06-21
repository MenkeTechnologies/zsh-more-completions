#compdef gdal_fillnodata.py
# Documentation: https://gdal.org/en/stable/programs/gdal_fillnodata.html
# Fill raster regions by interpolation from edges

local ret=1

_arguments -s -S \
  '(-h --help)--help[show help]' \
  '--help-general[show generic GDAL options]' \
  '-q[quiet mode]' \
  '-md[max search distance in pixels]:max_distance' \
  '-si[number of smoothing iterations]:smooth_iterations' \
  '*-o[special algorithm argument]:name=value' \
  '-b[band to operate on]:band' \
  '-mask[validity mask file]:filename:_files' \
  '-of[output format]:format' \
  '*-co[creation option]:name=value' \
  '-interp[interpolation strategy]:interp:(inv_dist nearest)' \
  '*:file:_files' && ret=0

return ret
