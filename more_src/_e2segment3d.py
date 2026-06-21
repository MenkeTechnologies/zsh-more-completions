#compdef e2segment3d.py
# Documentation: https://github.com/cryoem/eman2/blob/master/programs/e2segment3d.py
# EMAN2 segment a 3D density map into regions and export center coordinates

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-v --verbose)'{-v,--verbose=}'[verbose level]:n' \
  '--process=[name and parameters of segmentation processor]:proc' \
  '--output=[output file for segmentation map]:file:_files' \
  '--mask=[mask used in segmentation]:file:_files' \
  '--segout=[output stack for individual segmented volumes]:file:_files' \
  '--chimeraout=[write segment centers in Chimera marker format]:file:_files' \
  '--pdbout=[write segment centers in PDB format]:file:_files' \
  '--txtout=[write segment centers in text format]:file:_files' \
  '--ppid=[parent process id]:pid' \
  '--shifttocenter[shift output pdb to center of density map]' \
  '--helixfile=[start with existing secondary structure]:file:_files' \
  '--edgefile=[write edge file for pathwalker.py]:file:_files' \
  '--sym=[symmetry of the target complex]:sym' \
  '--asymunit[write points of only one asymmetrical unit]' \
  '*:volume:_files' && ret=0

return ret
