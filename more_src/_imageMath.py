#compdef imageMath.py
# Documentation: https://github.com/isce-framework/isce2
# ISCE2 band/pixel arithmetic over ISCE images via an expression

local ret=1

_arguments -s -S \
  '(-H --hh)'{-H,--hh}'[display detailed help information]' \
  '(-e --eval)'{-e,--eval}'[expression to evaluate]:expression:' \
  '(-o --out)'{-o,--out}'[name of the output file]:file:_files' \
  '(-s --scheme)'{-s,--scheme}'[output file format (default: BSQ)]:scheme:(BSQ BIL BIP)' \
  '(-t --type)'{-t,--type}'[output data type (default: float)]:type:(byte short int float double cfloat)' \
  '(-d --debug)'{-d,--debug}'[print debugging statements]' \
  '(-n --noxml)'{-n,--noxml}'[do not create an ISCE XML file for the output]' \
  '*:arg:_files' && ret=0

return ret
