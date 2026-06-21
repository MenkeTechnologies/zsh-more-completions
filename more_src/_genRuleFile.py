#compdef genRuleFile.py
# Documentation: https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts
# OpenROAD-flow-scripts — generate/update metric rule files from reference metadata

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-v --variant)'{-v,--variant}'=[flow variant (default: base)]:variant:' \
  '(-u --update)'{-u,--update}'[update all rules independent of previous values]' \
  '(-t --tighten)'{-t,--tighten}'[update passing rules if they became tighter]' \
  '(-f --failing)'{-f,--failing}'[update failing rules]' \
  '(-r --reference)'{-r,--reference}'=[reference metadata file]:file:_files' \
  '--rules=[rules input file]:file:_files' \
  '--new-rules=[rules output file]:file:_files' \
  '(-m --metrics)'{-m,--metrics}'=[only consider these metrics to change]:metrics:' && ret=0

return ret
