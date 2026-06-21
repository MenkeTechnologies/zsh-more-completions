#compdef e2speedtest.py
# Documentation: https://github.com/cryoem/eman2/blob/master/programs/e2speedtest.py
# EMAN2 benchmark alignment/processing speed of the local machine

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--slow[rtf_slow alignment]' \
  '--best[rtf_best alignment]' \
  '--short[fewer iterations, mainly for profiling]' \
  '--old[old rtf+refine aligner]' \
  '--bispec[new rtf with usebispec]' \
  '--low[low level test]' \
  '--size=[size of particles]:n' \
  '--simpleout[simpler 2 column output file (appends)]' \
  '--ppid=[parent process id]:pid' \
  '(-v --verbose)'{-v,--verbose=}'[verbose level]:n' && ret=0

return ret
