#compdef align.csh
# Documentation: https://github.com/gmtsar/gmtsar
# GMTSAR coregister/align a secondary SLC to a master SLC

local ret=1

_arguments -s \
  '1:satellite:(ERS ENVI ALOS SAT)' \
  '2:master name:_files' \
  '3:aligned name:_files' \
  '4:supermaster name:_files' && ret=0

return ret
