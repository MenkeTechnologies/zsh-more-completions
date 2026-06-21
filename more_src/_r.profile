#compdef r.profile
# Outputs the raster map layer values lying on user-defined line(s)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-g[output easting and northing in first two columns]' \
  '-c[output color values for each profile point]' \
  '--verbose[verbose module output]' \
  '--quiet[quiet module output]' \
  'input=[name of input raster map]:input:' \
  'output=[name of file for output (- for stdout)]:output:_files' \
  'coordinates=[profile coordinate pairs (east,north)]:coordinates:' \
  'file=[input file containing coordinate pairs]:file:_files' \
  'resolution=[distance between profile points]:resolution:' \
  'null_value=[string representing NULL values]:null_value:' \
  'units=[profile length units]:units:(meters kilometers feet miles)' \
  'format=[output format]:format:(plain csv json)' \
  'color_format=[color output format]:color_format:(rgb hex hsv triplet)' \
  'separator=[field delimiter]:separator:' \
  '*:param:' && ret=0

return ret
