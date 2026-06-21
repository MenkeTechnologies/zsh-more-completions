#compdef build.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/build.r
# littler script to build an R source package from a directory

local ret=1

_arguments -s -S \
  '(-f --fast)'{-f,--fast}'[skip building vignettes and manual]' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '*:package directory:_files -/' && ret=0

return ret
