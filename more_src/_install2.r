#compdef install2.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/install2.r
# littler script to install R packages with docopt option parsing

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '(-l --libloc)'{-l,--libloc}'=[location in which to install]:dir:_files -/' \
  '(-d --deps)'{-d,--deps}'=[install suggested dependencies as well]:deps:' \
  '(-n --ncpus)'{-n,--ncpus}'=[number of processes to use for parallel install]:ncpus:' \
  '(-r --repos)'{-r,--repos}'=[repositor(y|ies) to use, or NULL for file]:repos:_urls' \
  '(-e --error)'{-e,--error}'[throw error and halt instead of a warning]' \
  '(-s --skipinstalled)'{-s,--skipinstalled}'[skip installing already installed packages]' \
  '(-m --method)'{-m,--method}'=[method to be used for downloading files]:method:' \
  '(-t --type)'{-t,--type}'=[installation type as used by install.packages]:type:' \
  '(-q --quiet)'{-q,--quiet}'[run installation with quiet option set]' \
  '(-v --verbose)'{-v,--verbose}'[run installation with verbose option set]' \
  '*:package:' && ret=0

return ret
