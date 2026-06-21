#compdef installDeps.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/installDeps.r
# littler script to install the dependencies of an R package

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '(-d --deps)'{-d,--deps}'=[dependency types to install]:deps:' \
  '(-s --suggests)'{-s,--suggests}'[include Suggests dependencies (equivalent to --deps TRUE)]' \
  '*:package or directory:_files' && ret=0

return ret
