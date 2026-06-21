#compdef postw90.x
# Documentation: https://manpages.debian.org/testing/wannier90/postw90.x.1.en.html
# postw90.x — Wannier90 post-processing: compute properties from Wannier functions

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[print help message]' \
  '(-v --version)'{-v,--version}'[print version information]' \
  '(-d --dryrun)'{-d,--dryrun}'[perform a dryrun calculation on <seedname>.win]' \
  '*:seedname:_files -g "*.win(:r)"' && ret=0

return ret
