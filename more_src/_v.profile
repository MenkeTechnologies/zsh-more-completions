#compdef v.profile
# Documentation: https://grass.osgeo.org/grass-stable/manuals/v.profile.html
# GRASS GIS: extracts a profile of features along a line or buffer

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-c[omit column headers from output]' \
  '-z[exclude Z values from 3D vector data output]' \
  '--overwrite[allow output to overwrite existing maps]' \
  '--verbose[verbose module output]' \
  '--quiet[quiet module output]' \
  '*--input=[input vector map name]:map:' \
  '*--type=[feature types to process]:type:(point line)' \
  '*--where=[SQL WHERE conditions to filter features]:sql:' \
  '*--layer=[layer number or name]:value:' \
  '*--output=[output file path or stdout]:file:_files' \
  '*--separator=[field delimiter for output data]:value:' \
  '*--dp=[decimal precision for numeric values]:value:' \
  '*--format=[output format]:format:(plain csv json)' \
  '*--buffer=[tolerance distance for feature inclusion]:value:' \
  '*--map_output=[vector output showing profile line and buffer]:map:' \
  '*--coordinates=[profile line endpoints as coordinate pairs]:coords:' \
  '*--profile_map=[vector map as profiling line source]:map:' \
  '*--profile_where=[filter profile map features using SQL]:sql:' \
  '*--profile_layer=[layer within profile map]:value:' && ret=0

return ret
