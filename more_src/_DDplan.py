#compdef DDplan.py
# Documentation: https://github.com/scottransom/presto/blob/master/bin/DDplan.py
# PRESTO: generate a de-dispersion plan for a pulsar search.

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-w --write)'{-w,--write}'[write a dedisp.py file for the plan]' \
  '(-o --output)'{-o+,--output=}'[output .eps plot file]:file:_files' \
  '(-l --loDM)'{-l+,--loDM=}'[low DM to search]:dm:' \
  '(-d --hiDM)'{-d+,--hiDM=}'[high DM to search]:dm:' \
  '(-f --fctr)'{-f+,--fctr=}'[center frequency (MHz)]:mhz:' \
  '(-b --bw)'{-b+,--bw=}'[bandwidth (MHz)]:mhz:' \
  '(-n --numchan)'{-n+,--numchan=}'[number of channels]:n:' \
  '(-k --blocklen)'{-k+,--blocklen=}'[spectra per subint for downsampling]:n:' \
  '(-c --cohdm)'{-c+,--cohdm=}'[coherent DM in each channel]:dm:' \
  '(-t --dt)'{-t+,--dt=}'[sample time (s)]:sec:' \
  '(-s --subbands)'{-s+,--subbands=}'[number of subbands]:n:' \
  '(-p --procs)'{-p+,--procs=}'[number of CPUs dedispersing]:n:' \
  '(-r --res)'{-r+,--res=}'[acceptable time resolution (ms)]:ms:' && ret=0

return ret
