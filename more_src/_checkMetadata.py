#compdef checkMetadata.py
# Documentation: https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts
# OpenROAD-flow-scripts — check flow metadata against one or more rule files

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-m --metadata)'{-m,--metadata}'=[the metadata file]:file:_files' \
  '*'{-r,--rules}'=[the rules file]:file:_files' && ret=0

return ret
