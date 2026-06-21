#compdef generate_support_bundle.py
# Documentation: https://github.com/FRRouting/frr/blob/master/tools/generate_support_bundle.py
# Collect FRR daemon command output into a support bundle for debugging

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help and exit]' \
  '(-c --config)'{-c,--config}'[input config file]:config file:_files' \
  '(-l --log-dir)'{-l,--log-dir}'[directory for logfiles]:log dir:_files -/' \
  '(-N --pathspace)'{-N,--pathspace}'[insert prefix into config and socket paths]:pathspace:' && ret=0

return ret
