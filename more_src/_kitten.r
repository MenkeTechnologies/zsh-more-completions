#compdef kitten.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/kitten.r
# littler script to create a new R package skeleton via pkgKitten

local ret=1

_arguments -s -S \
  '(-t --type)'{-t,--type}'=[type of kitten]:type:(plain rcpp arma eigen)' \
  '(-b --bunny)'{-b,--bunny}'[install roxygen2 documentation example and roxygenize (plain only)]' \
  '(-p --puppy)'{-p,--puppy}'[invoke tinytest::puppy to set up testing (plain only)]' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '*:package name:' && ret=0

return ret
