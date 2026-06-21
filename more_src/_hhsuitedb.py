#compdef hhsuitedb.py
# Documentation: https://github.com/soedinglab/hh-suite/wiki
# hhsuitedb.py: build an HHsuite database with prefiltering and packed MSA/HMM files

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--ia3m=[glob for a3m files]:glob' \
  '--ics219=[glob for cs219 files]:glob' \
  '--ihhm=[glob for hhm files]:glob' \
  '-o+[output hhsuite database basename]:basename:_files' \
  '--cpu=[number of threads to use]:int' \
  '--force[try to fix problems with the database]' && ret=0

return ret
