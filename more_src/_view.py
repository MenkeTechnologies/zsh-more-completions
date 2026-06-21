#compdef view.py
# Documentation: https://mintpy.readthedocs.io/en/latest/api/cli/
# MintPy multi-subplot visualization of 2D/3D InSAR datasets

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-n --dset-num)'{-n,--dset-num}'[order number of date/dataset(s) to display]:num:' \
  '--nosearch[disable glob search for input dset]' \
  '(--ex --exclude)'{--ex,--exclude}'[dates will not be displayed]:dates:' \
  '--show-kept[display kept interferograms only]' \
  '--noverbose[disable the verbose message printing]' \
  '--math[apply math operation before displaying]:op:(square sqrt reverse inverse rad2deg deg2rad)' \
  '*:file:_files' && ret=0

return ret
