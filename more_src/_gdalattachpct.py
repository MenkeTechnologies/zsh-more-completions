#compdef gdalattachpct.py
# Documentation: https://gdal.org/en/stable/programs/gdalattachpct.html
# Attach a color table to a raster file from an input file

local ret=1

_arguments -s -S \
  '(-h --help)--help[show help]' \
  '--help-general[show generic GDAL options]' \
  '-of[output format]:format' \
  '*:file:_files' && ret=0

return ret
