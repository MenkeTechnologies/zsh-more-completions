#compdef compactpdf.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/compactpdf.r
# littler script to compact PDF files via R CMD's tools::compactPDF

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '*:pdf file:_files -g "*.pdf"' && ret=0

return ret
