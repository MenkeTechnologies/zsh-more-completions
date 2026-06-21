#compdef genMetrics.py
# Documentation: https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts
# OpenROAD-flow-scripts — generate metadata/metrics JSON from a flow run

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-d --design)'{-d,--design}'=[design name for metrics]:design:' \
  '(-v --flowVariant)'{-v,--flowVariant}'=[FLOW_VARIANT for the design]:variant:' \
  '(-p --platform)'{-p,--platform}'=[design platform]:platform:' \
  '(-c --comment)'{-c,--comment}'=[additional comments to embed]:comment:' \
  '(-o --output)'{-o,--output}'=[output file]:file:_files' \
  '(-x --hier)'{-x,--hier}'[hierarchical JSON]' \
  '--logs=[path to logs]:dir:_files -/' \
  '--reports=[path to reports]:dir:_files -/' \
  '--results=[path to results]:dir:_files -/' && ret=0

return ret
