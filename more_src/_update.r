#compdef update.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/update.r
# littler script to update installed R packages

local ret=1

_arguments -s -S \
  '(-r --repos)'{-r,--repos}'=[repository to use, or NULL for file]:repos:_urls' \
  '(-l --libloc)'{-l,--libloc}'=[path to examine for packages to update]:dir:_files -/' \
  '(-n --ncpus)'{-n,--ncpus}'=[number of processes to use for parallel install]:ncpus:' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' && ret=0

return ret
