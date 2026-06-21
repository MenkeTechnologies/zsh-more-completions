#compdef v.surf.rst
# GRASS GIS: spatial approximation and topographic analysis (RST interpolation)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-c[perform cross-validation without raster approximation]' \
  '-t[use scale dependent tension]' \
  '-d[output partial derivatives instead of topographic parameters]' \
  '--overwrite[allow output to overwrite existing files]' \
  '--verbose[verbose output]' \
  '--quiet[quiet output]' \
  '--input=[input vector map]:name:' \
  '--layer=[layer number or name]:layer:' \
  '--zcolumn=[attribute column with values to approximate]:column:' \
  '--where=[SQL WHERE conditions]:where:' \
  '--elevation=[output elevation raster map]:name:' \
  '--slope=[output slope raster map]:name:' \
  '--aspect=[output aspect raster map]:name:' \
  '--pcurvature=[output profile curvature raster map]:name:' \
  '--tcurvature=[output tangential curvature raster map]:name:' \
  '--mcurvature=[output mean curvature raster map]:name:' \
  '--deviations=[output deviations vector point map]:name:' \
  '--cvdev=[output cross-validation errors vector map]:name:' \
  '--treeseg=[output quadtree segmentation vector map]:name:' \
  '--overwin=[output overlapping windows vector map]:name:' \
  '--nprocs=[number of threads]:nprocs:' \
  '--mask=[raster map used as mask]:name:' \
  '--tension=[tension parameter]:tension:' \
  '--smooth=[smoothing parameter]:smooth:' \
  '--smooth_column=[column with smoothing parameters]:column:' \
  '--segmax=[maximum points in a segment]:segmax:' \
  '--npmin=[minimum points per segment]:npmin:' \
  '--dmin=[minimum distance between points]:dmin:' \
  '--dmax=[maximum distance between isoline points]:dmax:' \
  '--zscale=[conversion factor for values]:zscale:' \
  '--theta=[anisotropy angle in degrees]:theta:' \
  '--scalex=[anisotropy scaling factor]:scalex:' && ret=0

return ret
