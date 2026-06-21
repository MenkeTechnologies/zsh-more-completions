#compdef v.surf.tps
# Documentation: https://grass.osgeo.org/grass-stable/manuals/addons/v.surf.tps.html
# GRASS GIS addon: thin plate spline interpolation with covariables

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-c[input points are dense clusters separated by empty areas]' \
  '--overwrite[allow output to overwrite existing maps]' \
  '--verbose[verbose module output]' \
  '--quiet[quiet module output]' \
  '*--input=[name of input vector point map]:map:' \
  '*--layer=[layer number or name]:value:' \
  '*--column=[attribute column with values for interpolation]:column:' \
  '*--smooth=[smoothing factor]:value:' \
  '*--overlap=[overlap factor <= 1]:value:' \
  '*--min=[minimum number of points for TPS interpolation]:value:' \
  '*--covars=[input raster maps to use as covariables]:maps:' \
  '*--thin=[point cloud thinning factor in cells]:value:' \
  '*--output=[name for output raster map]:map:' \
  '*--mask=[raster map for masking interpolation areas]:map:' \
  '*--memory=[memory allocation in MB]:value:' && ret=0

return ret
