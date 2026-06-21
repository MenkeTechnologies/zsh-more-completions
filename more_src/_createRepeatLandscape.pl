#compdef createRepeatLandscape.pl
# Documentation: https://github.com/rmhubley/RepeatMasker/blob/master/util/createRepeatLandscape.pl
# RepeatMasker: generate an HTML repeat landscape graph from a divergence summary

local ret=1

_arguments -s \
  '-version[print version and exit]' \
  '-div[divergence summary file from calcDivergenceFromAlign.pl]:file:_files' \
  '-maxScale[maximum value for the y-axis scale]:value:' \
  '-minCount[minimum count to include]:value:' \
  '-g[genome size in base pairs]:size:' \
  '-twoBit[twoBit genome file (alternative to -g)]:file:_files' \
  '-t[graph title]:title:' \
  '-j[output a JSON data file]' && ret=0

return ret
