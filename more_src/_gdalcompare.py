#compdef gdalcompare.py
# Documentation: https://gdal.org/en/stable/programs/gdalcompare.html
# Compare two images for differences

local ret=1

_arguments -s -S \
  '(-h --help)--help[show help]' \
  '--help-general[show generic GDAL options]' \
  '-dumpdiffs[output pixel content differences to a TIFF file]' \
  '-skip_binary[skip exact comparison of binary content]' \
  '-skip_overviews[skip comparison of overviews]' \
  '-skip_geolocation[skip comparison of GEOLOCATION metadata domain]' \
  '-skip_geotransform[skip comparison of geotransform matrix]' \
  '-skip_metadata[skip comparison of metadata]' \
  '-skip_rpc[skip comparison of RPC metadata domain]' \
  '-skip_srs[skip comparison of spatial reference systems]' \
  '-sds[compare all subdatasets within the dataset]' \
  '*:file:_files' && ret=0

return ret
