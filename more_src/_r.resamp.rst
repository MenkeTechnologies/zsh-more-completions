#compdef r.resamp.rst
# Documentation: https://grass.osgeo.org/grass-stable/manuals/r.resamp.rst.html
# GRASS GIS: reinterpolate and compute topographic analysis with regularized spline with tension

local ret=1

_arguments -s \
  '(- *)--help[print usage summary]' \
  '-t[use dnorm independent tension]' \
  '-d[output partial derivatives instead of topographic parameters]' \
  '--overwrite[allow output files to overwrite existing files]' \
  '--verbose[verbose module output]' \
  '--quiet[quiet module output]' \
  '--qq[very quiet module output]' \
  '--ui[force launching GUI dialog]' \
  'input=[name of input raster map]:map:' \
  'ew_res=[desired east-west resolution]:float:' \
  'ns_res=[desired north-south resolution]:float:' \
  'elevation=[name for output elevation raster map]:map:' \
  'slope=[name for output slope raster map]:map:' \
  'aspect=[name for output aspect raster map]:map:' \
  'pcurvature=[name for output profile curvature raster map]:map:' \
  'tcurvature=[name for output tangential curvature raster map]:map:' \
  'mcurvature=[name for output mean curvature raster map]:map:' \
  'smooth=[name of input smoothing parameter raster map]:map:' \
  'maskmap=[name of input mask raster map]:map:' \
  'overlap=[rows/columns overlap for segmentation]:int:' \
  'zscale=[multiplier for z-values]:float:' \
  'tension=[spline tension]:float:' \
  'theta=[anisotropy angle (degrees CCW from East)]:float:' \
  'scalex=[anisotropy scaling factor]:float:' \
  '*::arg:_files' && ret=0

return ret
