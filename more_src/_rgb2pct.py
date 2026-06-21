#compdef rgb2pct.py
# Documentation: https://gdal.org/en/stable/programs/rgb2pct.html
# Convert a 24bit RGB image to 8bit paletted

local ret=1

_arguments -s -S \
  '(-h --help)--help[show help]' \
  '--help-general[show generic GDAL options]' \
  '-n[number of colors in the generated color table]:color' \
  '*--creation-option[creation option for output driver]:option' \
  '-pct[extract color table from palette file]:palette_file:_files' \
  '-of[output format]:format' \
  '*:file:_files' && ret=0

return ret
