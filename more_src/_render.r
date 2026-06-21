#compdef render.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/render.r
# littler script to call rmarkdown::render on input files

local ret=1

_arguments -s -S \
  '(-c --compact)'{-c,--compact}'[compact pdf file]' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '*:input file:_files -g "*.(Rmd|rmd|md|Rnw)"' && ret=0

return ret
