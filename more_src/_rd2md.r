#compdef rd2md.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/rd2md.r
# littler script to convert R Rd documentation to Markdown

local ret=1

_arguments -s -S \
  '(-s --src)'{-s,--src}'=[source root directory]:dir:_files -/' \
  '(-o --out)'{-o,--out}'=[output directory]:dir:_files -/' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '*:file or package:_files' && ret=0

return ret
