#compdef installRepo.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/installRepo.r
# littler script to install an R package from a github/bitbucket/svn/url repository

local ret=1

_arguments -s -S \
  '(-l --libloc)'{-l,--libloc}'=[location in which to install]:dir:_files -/' \
  '(-d --deps)'{-d,--deps}'=[install suggested dependencies as well]:deps:' \
  '(-r --repos)'{-r,--repos}'=[repository: github, bitbucket, svn, or url]:repos:(github bitbucket svn url)' \
  '(-s --subdir)'{-s,--subdir}'=[optional sub-directory within the repo (svn or url)]:subdir:' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '*:source repo:' && ret=0

return ret
