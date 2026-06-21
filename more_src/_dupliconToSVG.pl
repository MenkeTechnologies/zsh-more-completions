#compdef dupliconToSVG.pl
# Documentation: https://github.com/Dfam-consortium/RepeatMasker/blob/master/util/dupliconToSVG.pl
# Render a DupMasker .duplicons file as an SVG diagram

local ret=1

_arguments -s -S \
  '-version[display program version]' \
  '1:duplicons_file:_files -g "*.duplicons"' && ret=0

return ret
