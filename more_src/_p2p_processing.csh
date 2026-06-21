#compdef p2p_processing.csh
# Documentation: https://github.com/gmtsar/gmtsar
# GMTSAR end-to-end pair-to-pair interferogram processing driver

local ret=1

_arguments -s \
  '1:satellite:(ERS ENVI ALOS ALOS_SLC ALOS2 ALOS2_SCAN ALOS4 S1_STRIP S1_TOPS ENVI_SLC CSK_RAW CSK_SLC CSG TSX RS2 GF3 LT1)' \
  '2:master image:_files' \
  '3:aligned image:_files' \
  '4:configuration file:_files' && ret=0

return ret
