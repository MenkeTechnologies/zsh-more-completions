#compdef installDeps2.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/installDeps2.r
# littler script to install dependencies listed in a DESCRIPTION file

local ret=1

_arguments -s -S \
  '(-s --suggests)'{-s,--suggests}'[include Suggests field when parsing dependencies]' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '*:DESCRIPTION file:_files' && ret=0

return ret
