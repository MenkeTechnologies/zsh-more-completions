#compdef fcs.extract.py
# Documentation: https://github.com/pontikos/fcstools/blob/master/fcs.extract.py
# Extract event data from an FCS flow-cytometry file. Optional delimiter code: 0=comma 1=space 2=tab 3=binary.

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:fcs file or directory:_files' \
  '2:delimiter code:((0\:comma 1\:space 2\:tab 3\:binary))' && ret=0

return ret
