#compdef KiBOM_CLI.py
# Documentation: https://github.com/SchrodingersGat/KiBoM/blob/master/README.md
# KiBOM_CLI.py - configurable bill of materials generator for KiCad

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version]' \
  '(-n --number)'{-n,--number}'=[number of boards to build (default 1)]:number' \
  '(-v --verbose)'{-v,--verbose}'[enable verbose output]' \
  '(-r --variant)'{-r,--variant}'=[board variant(s) to include in the BoM]:variant' \
  '(-d --subdirectory)'{-d,--subdirectory}'=[subdirectory for BoM output]:directory:_files -/' \
  '--cfg=[BoM config file (defaults to bom.ini)]:file:_files' \
  '(-s --separator)'{-s,--separator}'=[CSV separator (default ,)]:separator' \
  '(-k --no-colon-sep)'{-k,--no-colon-sep}'[do not use colon as config file delimiter]' \
  '1:netlist:_files -g "*.xml"' \
  '2:output:_files' && ret=0

return ret
