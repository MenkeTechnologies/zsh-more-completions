#compdef runit.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/runit.r
# littler script to run RUnit test files

local ret=1

_arguments -s -S \
  '(-p --packages)'{-p,--packages}'=[comma-separated list of packages to install]:packages:' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '*:test file:_files' && ret=0

return ret
