#compdef gdal_pansharpen.py
# Documentation: https://gdal.org/en/stable/programs/gdal_pansharpen.html
# Perform a pansharpen operation

local ret=1

_arguments -s -S \
  '(-h --help)--help[show help]' \
  '--help-general[show generic GDAL options]' \
  '-of[output format]:format' \
  '*-b[choose spectral bands for output]:band' \
  '*-w[weight for pseudo panchromatic value]:weight_val' \
  '-r[resampling algorithm]:resampling:(nearest bilinear cubic cubicspline lanczos average)' \
  '-threads[number of threads]:threads:(ALL_CPUS)' \
  '-bitdepth[bit depth of pan and spectral bands]:val' \
  '-nodata[nodata value for bands]:val' \
  '-spat_adjust[behavior for differing band extents]:spat_adjust:(union intersection none nonewithoutwarning)' \
  '*-co[creation option]:name=value' \
  '-q[suppress progress output]' \
  '*:file:_files' && ret=0

return ret
