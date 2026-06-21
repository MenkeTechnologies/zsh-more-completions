#compdef addDummyToLef.py
# Documentation: https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts
# OpenROAD-flow-scripts — add a dummy macro to a LEF based on a reference macro

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-r --refMacro)'{-r,--refMacro}'=[reference macro]:macro:' \
  '(-i --inputLef)'{-i,--inputLef}'=[input LEF]:file:_files -g "*.lef"' \
  '(-o --outputLef)'{-o,--outputLef}'=[output LEF]:file:_files -g "*.lef"' && ret=0

return ret
