#compdef waterfaller.py
# Documentation: https://github.com/scottransom/presto/blob/master/bin/waterfaller.py
# PRESTO: make a waterfall plot of raw data around a candidate.

local ret=1

_arguments -s -S \
  '--subdm=[DM to use when subbanding]:dm:' \
  '--zerodm[turn zerodm filter ON]' \
  '(-s --nsub)'{-s+,--nsub=}'[number of subbands to use]:n:' \
  '(-d --dm)'{-d+,--dm=}'[DM to dedisperse data for plot]:dm:' \
  '--show-ts[plot the time series]' \
  '--show-spec[plot the spectrum]' \
  '--bandpass[correct for the bandpass]' \
  '(-T --start-time)'{-T+,--start-time=}'[time into obs to start plot (s)]:sec:' \
  '(-t --duration)'{-t+,--duration=}'[duration of plot (s)]:sec:' \
  '(-n --nbins)'{-n+,--nbins=}'[number of time bins to plot]:n:' \
  '--width-bins=[smooth each channel with a boxcar this wide]:n:' \
  '*--sweep-dm=[show frequency sweep using this DM]:dm:' \
  '*--sweep-posn=[show frequency sweep at this position]:posn:' \
  '--downsamp=[factor to downsample data by]:n:' \
  '--maskfile=[mask file produced by rfifind]:file:_files' \
  '--mask[mask data using rfifind mask]' \
  '--scaleindep[scale each channel independently]' \
  '--show-colour-bar[show a colour bar]' \
  '--colour-map=[name of a matplotlib colour map]:map:' \
  '*:data file:_files' && ret=0

return ret
