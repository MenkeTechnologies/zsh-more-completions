#compdef rcc.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/rcc.r
# littler script to run R CMD check via rcmdcheck

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '(-c --as-cran)'{-c,--as-cran}'[add --as-cran flag to R CMD CHECK arguments]' \
  '(-a --args)'{-a,--args}'=[additional arguments passed to R CMD CHECK]:args:' \
  '(-l --libpath)'{-l,--libpath}'=[additional library path for R CMD CHECK]:dir:_files -/' \
  '(-r --repos)'{-r,--repos}'=[additional repositories for R CMD CHECK]:repos:_urls' \
  '(-f --fast)'{-f,--fast}'[skip vignettes and manuals during checks]' \
  '(-v --valgrind)'{-v,--valgrind}'[execute tests with valgrind]' \
  '(-e --erroron)'{-e,--erroron}'=[error handling behavior]:level:(never error warning note)' \
  '(-q --quiet)'{-q,--quiet}'[run rcmdcheck without verbose output]' \
  '*:package directory:_files -/' && ret=0

return ret
