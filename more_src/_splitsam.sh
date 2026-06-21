#compdef splitsam.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/splitsam.sh
# BBTools: split a sam file into plus, minus and unmapped reads

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:input sam:_files' \
  '2:plus output:_files' \
  '3:minus output:_files' \
  '4:unmapped output:_files' \
  '5:header:(header)' \
  '*:file:_files' && ret=0

return ret
