#compdef dratInsert.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/dratInsert.r
# littler script to insert source packages into a drat repository

local ret=1

_arguments -s -S \
  '(-r --repo)'{-r,--repo}'=[repository path to use]:dir:_files -/' \
  '(-c --commit)'{-c,--commit}'=[in github use, commit with MSG]:message:' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '*:tar.gz package:_files -g "*.tar.gz"' && ret=0

return ret
