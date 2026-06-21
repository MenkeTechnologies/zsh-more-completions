#compdef installBSPM.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/installBSPM.r
# littler script to install R packages as system binaries via bspm

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '*:package:' && ret=0

return ret
