#compdef installBioc.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/installBioc.r
# littler script to install Bioconductor R packages

local ret=1

_arguments -s -S \
  '(-l --libloc)'{-l,--libloc}'=[location in which to install]:dir:_files -/' \
  '(-d --deps)'{-d,--deps}'=[install suggested dependencies as well]:deps:' \
  '(-n --ncpus)'{-n,--ncpus}'=[number of processes to use for parallel install]:ncpus:' \
  '(-r --repo)'{-r,--repo}'=[additional repository to use]:repo:_urls' \
  '(-e --error)'{-e,--error}'[throw error and halt instead of a warning]' \
  '(-s --skipinstalled)'{-s,--skipinstalled}'[skip installing already installed packages]' \
  '(-m --method)'{-m,--method}'=[method to be used for downloading files]:method:' \
  '(-f --force)'{-f,--force}'[force re-download of up-to-date packages]' \
  '(-u --update)'{-u,--update}'[update old already installed packages]' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '*:package:' && ret=0

return ret
