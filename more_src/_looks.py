#compdef looks.py
# Documentation: https://github.com/isce-framework/isce2
# ISCE2 multilook an ISCE product in range and azimuth

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-i --input)'{-i,--input}'[input ISCE product with corresponding .xml file]:file:_files' \
  '(-o --output)'{-o,--output}'[output ISCE product with corresponding .xml file]:file:_files' \
  '(-r --range)'{-r,--range}'[number of range looks to apply (default: 1)]:looks:' \
  '(-a --azimuth)'{-a,--azimuth}'[number of azimuth looks to apply (default: 1)]:looks:' && ret=0

return ret
