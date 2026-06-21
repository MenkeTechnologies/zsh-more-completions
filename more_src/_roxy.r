#compdef roxy.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/roxy.r
# littler script to run roxygen2::roxygenize on a package

local ret=1

_arguments -s -S \
  '(-n --nocache)'{-n,--nocache}'[run the current version not the cached version]' \
  '(-r --roclets)'{-r,--roclets}'=[roclets arguments for roxygenize]:roclets:' \
  '(-f --full)'{-f,--full}'[apply nocache and set roclets to NULL]' \
  '(-m --minimal)'{-m,--minimal}'[apply roclets as namespace,rd]' \
  '(-l --libpath)'{-l,--libpath}'=[additional library path to be added]:dir:_files -/' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '*:package directory:_files -/' && ret=0

return ret
