#compdef gdalmove.py
# Documentation: https://gdal.org/en/stable/programs/gdalmove.html
# Transform georeferencing of a dataset in place

local ret=1

_arguments -s -S \
  '(-h --help)--help[show help]' \
  '--help-general[show generic GDAL options]' \
  '-s_srs[override source coordinate system]:srs_defn' \
  '-t_srs[target coordinate system]:srs_defn' \
  '-et[error threshold in pixels]:max_pixel_err' \
  '*:target_file:_files' && ret=0

return ret
