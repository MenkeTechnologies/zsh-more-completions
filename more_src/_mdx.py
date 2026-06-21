#compdef mdx.py
# Documentation: https://github.com/isce-framework/isce2
# ISCE2 wrapper to display ISCE images with mdx from a metadata file

local ret=1

_arguments -s \
  '-type[metadata format]:format:(rsc xml)' \
  '-image[data filename when it differs from metadata filename]:file:_files' \
  '-ext[list available image extensions]' \
  '-cw[override default colormap window settings]:value:' \
  '-e[override default e-value]:value:' \
  '-amp1[override default amplitude 1 setting]:value:' \
  '-amp2[override default amplitude 2 setting]:value:' \
  '-chdr[override default header setting]:value:' \
  '-RMG-Mag[override default magnitude setting]:value:' \
  '-RMG_Hgt[override default height setting]:value:' \
  '-wrap[override default wrapping setting]:value:' \
  '-cmap[override default colormap setting]:value:' \
  '*:metadata file:_files' && ret=0

return ret
