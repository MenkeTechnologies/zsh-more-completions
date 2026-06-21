#compdef installGithub.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/installGithub.r
# littler script to install R packages directly from GitHub

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '(-d --deps)'{-d,--deps}'=[install suggested dependencies as well]:deps:' \
  '(-u --update)'{-u,--update}'=[update dependencies]:update:' \
  '(-r --repos)'{-r,--repos}'=[repositor(y|ies) for dependency resolution]:repos:_urls' \
  '(-t --type)'{-t,--type}'=[installation type as used by install.packages]:type:' \
  '*:github repo:' && ret=0

return ret
