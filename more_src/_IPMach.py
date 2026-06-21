#compdef IPMach.py
# Documentation: https://ambermd.org/AmberTools.php
# ion parameter optimization machine (MCPB toolset)

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '-i[input file name]:file:_files' && ret=0

return ret
