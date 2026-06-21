#compdef installPPM.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/installPPM.r
# littler script to install binary R packages from the Posit Package Manager

local ret=1

_arguments -s -S \
  '(-c --code)'{-c,--code}'=[set code name for distribution]:code:' \
  '(-l --libloc)'{-l,--libloc}'=[location in which to install]:dir:_files -/' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '*:package:' && ret=0

return ret
