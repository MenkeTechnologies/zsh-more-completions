#compdef mdout_analyzer.py
# Documentation: https://ambermd.org/doc12/Amber24.pdf
# AmberTools mdout_analyzer.py: parse and analyze sander/pmemd mdout files

local ret=1

_arguments -s -S \
  '*:mdout file:_files' && ret=0

return ret
