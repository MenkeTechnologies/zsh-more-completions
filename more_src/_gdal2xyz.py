#compdef gdal2xyz.py
# Documentation: https://gdal.org/en/stable/programs/gdal2xyz.html
# Translate a raster file into xyz ASCII point stream

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--help-general[show generic GDAL options]' \
  '-skip[rows/cols to skip in each iteration]:factor' \
  '-srcwin[select a subwindow from the source image]:xoff' \
  '*'{-b,-band}'[select input band]:band' \
  '-allbands[select all input bands]' \
  '-csv[use comma instead of space as delimiter]' \
  '-skipnodata[exclude output lines with nodata value]' \
  '-srcnodata[nodata value for source pixels]:value' \
  '-dstnodata[replace source nodata with given nodata]:value' \
  '*:file:_files' && ret=0

return ret
