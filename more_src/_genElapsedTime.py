#compdef genElapsedTime.py
# Documentation: https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts
# OpenROAD-flow-scripts — report elapsed time parsed from flow log files

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--match=[match this string in the log file names]:str:' \
  '(-d --logDir)'{-d,--logDir}'=[log files directories]:dir:_files -/' \
  '--noHeader[skip the header]' && ret=0

return ret
