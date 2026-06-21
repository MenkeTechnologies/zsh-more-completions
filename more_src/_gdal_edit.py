#compdef gdal_edit.py
# Documentation: https://gdal.org/en/stable/programs/gdal_edit.html
# Edit in place various information of an existing GDAL dataset

local ret=1

_arguments -s -S \
  '(-h --help)--help[show help]' \
  '--help-general[show generic GDAL options]' \
  '-ro[open in read-only mode (write to PAM .aux.xml)]' \
  '-a_srs[assign target coordinate system]:srs_def' \
  '-a_coord_epoch[assign coordinate epoch as decimal year]:epoch' \
  '-unsetepoch[remove the coordinate epoch]' \
  '-a_ullr[set georeferenced bounds]:ulx:::uly:::lrx:::lry' \
  '-a_ulurll[set bounds from three points]:ulx' \
  '-tr[set target resolution]:xres:::yres' \
  '-unsetgt[remove georeference information]' \
  '-unsetrpc[remove RPC information]' \
  '-stats[calculate and store band statistics]' \
  '-approx_stats[calculate approximate band statistics]' \
  '-unsetstats[remove band statistics]' \
  '-setstats[store user-defined statistics]:min' \
  '-a_nodata[assign nodata value to bands]:value' \
  '-unsetnodata[remove existing nodata values]' \
  '-scale[assign scale value(s) to bands]:value' \
  '-offset[assign offset value(s) to bands]:value' \
  '-units[assign unit to band(s)]:value' \
  '-gcp[add ground control point]:pixel' \
  '-unsetmd[remove existing metadata]' \
  '*-mo[set metadata key=value]:meta_tag=value' \
  '*-oo[format-specific open option]:name=value' \
  '*:file:_files' && ret=0

return ret
