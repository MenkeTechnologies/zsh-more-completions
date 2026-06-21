#compdef tsview.py
# Documentation: https://mintpy.readthedocs.io/en/latest/api/cli/
# MintPy interactive time-series displacement viewer

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--label[labels to display for multiple input files]:label:' \
  '--ylim[Y limits for point plotting]:ymin:' \
  '--tick-right[set tick and tick label to the right]' \
  '(-l --lookup)'{-l,--lookup}'[lookup table file]:file:_files' \
  '(--no-show-img --not-show-image)'{--no-show-img,--not-show-image}'[do NOT show the map figure]' \
  '-n[epoch/slice number for initial display]:num:' \
  '--error[txt file with error for each date]:file:_files' \
  '--start-date[start date of displacement to display]:date:' \
  '--end-date[end date of displacement to display]:date:' \
  '(--exclude --ex)'{--exclude,--ex}'[exclude date shown as gray]:dates:' \
  '(--zero-first --zf)'{--zero-first,--zf}'[set displacement at first acquisition to zero]' \
  '(--offset --off)'{--offset,--off}'[offset for each timeseries file]:offset:' \
  '--noverbose[disable the verbose message printing]' \
  '(--nomodel --nofit)'{--nomodel,--nofit}'[do not plot the prediction of the time function]' \
  '--plot-model-conf-int[plot the time function prediction confidence intervals]' \
  '--yx[initial pixel to plot in Y/X coord]:y:' \
  '--lalo[initial pixel to plot in lat/lon coord]:lat:' \
  '--marker[marker style]:marker:' \
  '(--ms --markersize)'{--ms,--markersize}'[marker size]:size:' \
  '(--lw --linewidth)'{--lw,--linewidth}'[line width]:width:' \
  '(--ew --edgewidth)'{--ew,--edgewidth}'[edge width for the error bar]:width:' \
  '*:file:_files' && ret=0

return ret
