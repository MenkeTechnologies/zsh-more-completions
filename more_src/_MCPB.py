#compdef MCPB.py
# Documentation: https://ambermd.org/AmberTools.php
# build force fields for metal-containing complexes (Metal Center Parameter Builder)

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '-i[input file name]:file:_files' \
  '(-s --step)'{-s,--step}'[step number to perform]:step:(1 1n 1m 1a 2 2e 2s 2z 3 3a 3b 3c 3d 4 4b 4n1 4n2)' \
  '--logf[Gaussian/GAMESS-US output logfile]:file:_files' \
  '--fchk[Gaussian fchk file]:file:_files' && ret=0

return ret
