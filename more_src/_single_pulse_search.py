#compdef single_pulse_search.py
# Documentation: https://github.com/scottransom/presto/blob/master/bin/single_pulse_search.py
# PRESTO: search de-dispersed time series for single dispersed pulses.

local ret=1

_arguments -s -S \
  '(-x --xwin)'{-x,--xwin}'[use an X-window instead of postscript plot]' \
  '(-p --noplot)'{-p,--noplot}'[look for pulses but do not generate a plot]' \
  '(-m --maxwidth)'{-m+,--maxwidth=}'[max downsampling in sec]:sec:' \
  '(-t --threshold)'{-t+,--threshold=}'[threshold SNR (default 5.0)]:snr:' \
  '(-s --start)'{-s+,--start=}'[only plot events after this time (s)]:sec:' \
  '(-e --end)'{-e+,--end=}'[only plot events before this time (s)]:sec:' \
  '(-g --glob)'{-g+,--glob=}'[process files from this glob expression]:glob:' \
  '(-f --fast)'{-f,--fast}'[use a faster method of de-trending]' \
  '(-b --nobadblocks)'{-b,--nobadblocks}'[do not check for bad-blocks]' \
  '(-d --detrendlen)'{-d+,--detrendlen=}'[chunksize for detrending]:n:' \
  '(-z --gzip)'{-z,--gzip}'[gzip the output .singlepulse files]' \
  '*:dat file:_files -g "*.dat"' && ret=0

return ret
