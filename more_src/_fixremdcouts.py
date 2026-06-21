#compdef fixremdcouts.py
# Documentation: https://ambermd.org/doc12/Amber24.pdf
# AmberTools fixremdcouts.py: reconstruct cpout/ceout files from any REMD

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-v --version)'{-v,--version}'[show version]' \
  '--author[show author name]' \
  '(-O --overwrite)'{-O,--overwrite}'[allow overwriting existing outputs]' \
  '*-couts[AMBER CPOUT and/or CEOUT files]:file:_files' \
  '-prefix[prefix of the reordered file names]:prefix:' \
  '*:file:_files' && ret=0

return ret
