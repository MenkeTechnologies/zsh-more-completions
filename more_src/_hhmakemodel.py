#compdef hhmakemodel.py
# Documentation: https://github.com/soedinglab/hh-suite/wiki
# hhmakemodel.py: generate MSAs or 3D models from HHsearch/HHblits result files

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-v --verbose)'{-v,--verbose}'[verbose mode]' \
  '*-m+[pick hits with specified indices]:int' \
  '-e+[maximum E-Value threshold]:float' \
  '-r+[residue ratio filter threshold]:float' \
  '-c[convert non-canonical residues]' \
  '1:results file from HHsearch:_files' \
  '2:folder containing cif files:_files -/' \
  '3:output PIR-formatted alignment:_files' \
  '4:output folder for modified cif files:_files -/' && ret=0

return ret
