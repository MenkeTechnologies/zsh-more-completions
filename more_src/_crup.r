#compdef crup.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/crup.r
# littler script to upload a source package to CRAN

local ret=1

_arguments -s -S \
  '(-a --author)'{-a,--author}'=[author name to use in submission]:author:' \
  '(-e --email)'{-e,--email}'=[email address for submission]:email:' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '*:tar.gz package:_files -g "*.tar.gz"' && ret=0

return ret
