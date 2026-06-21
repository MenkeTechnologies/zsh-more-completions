#compdef pct2rgb.py
# Documentation: https://gdal.org/en/stable/programs/pct2rgb.html
# Convert an 8bit paletted image to 24bit RGB

local ret=1

_arguments -s -S \
  '(-h --help)--help[show help]' \
  '--help-general[show generic GDAL options]' \
  '-of[output format]:format' \
  '-b[band to convert to RGB]:band' \
  '-rgba[generate a RGBA file]' \
  '-pct[extract color table from palette file]:palette_file:_files' \
  '*:file:_files' && ret=0

return ret
