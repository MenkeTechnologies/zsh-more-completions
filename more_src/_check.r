#compdef check.r
# Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/check.r
# littler script to run R CMD check on a source package

local ret=1

_arguments -s -S \
  '(-a --as-cran)'{-a,--as-cran}'[apply customization similar to CRAN incoming checks]' \
  '(-r --repo)'{-r,--repo}'=[repository URL]:url:_urls' \
  '(-n --no-manvig)'{-n,--no-manvig}'[exclude manual and vignette generation]' \
  '(-i --install-deps)'{-i,--install-deps}'[install packages along with their dependencies]' \
  '(-k --install-kitchen)'{-k,--install-kitchen}'[install packages including suggested dependencies]' \
  '(-l --library)'{-l,--library}'=[library path for installations]:dir:_files -/' \
  '(-s --setwd)'{-s,--setwd}'=[change working directory before running tests]:dir:_files -/' \
  '(-d --deb-pkgs)'{-d,--deb-pkgs}'=[install binary .deb packages with dependencies]:deb pkgs:' \
  '(-u --use-sudo)'{-u,--use-sudo}'[use sudo when installing .deb packages]' \
  '(-h --help)'{-h,--help}'[show this help text]' \
  '(-x --usage)'{-x,--usage}'[show help and short example usage]' \
  '*:tar.gz package:_files -g "*.tar.gz"' && ret=0

return ret
