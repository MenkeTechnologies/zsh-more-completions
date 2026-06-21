#compdef getDate.py
# Documentation: https://github.com/pontikos/fcstools/blob/master/getDate.py
# Print the acquisition date of an FCS flow-cytometry file. Takes one path to an FCS file or directory.

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:fcs file or directory:_files' && ret=0

return ret
