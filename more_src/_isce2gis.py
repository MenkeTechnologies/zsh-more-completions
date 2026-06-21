#compdef isce2gis.py
# Documentation: https://github.com/isce-framework/isce2
# ISCE2 export ISCE products to GIS-readable VRT or ENVI formats

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:command:(vrt envi)' \
  '(-i --input)'{-i,--input}'[ISCE product file to export]:file:_files' \
  '--lat[path to latitude file for geolocation]:file:_files' \
  '--lon[path to longitude file for geolocation]:file:_files' && ret=0

return ret
