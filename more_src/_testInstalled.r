#compdef testInstalled.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/testInstalled.r
# littler script to run tests of an installed R package

local ret=1

_arguments -s -S \
  '(-l --libloc)'{-l,--libloc}'=[location where package(s) are installed]:dir:_files -/' \
  '(-o --outdir)'{-o,--outdir}'=[directory into which to write output files]:dir:_files -/' \
  '(-t --types)'{-t,--types}'=[type(s) of tests to be done]:types:' \
  '(-s --srcdir)'{-s,--srcdir}'=[optional directory to look for .save files]:dir:_files -/' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '*:package:' && ret=0

return ret
