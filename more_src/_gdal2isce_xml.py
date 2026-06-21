#compdef gdal2isce_xml.py
# Documentation: https://github.com/isce-framework/isce2
# ISCE2 generate an ISCE XML header from a GDAL-readable file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-i --input)'{-i,--input}'[input filename (GDAL supported)]:file:_files' && ret=0

return ret
