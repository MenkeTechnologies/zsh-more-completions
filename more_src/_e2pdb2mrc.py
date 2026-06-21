#compdef e2pdb2mrc.py
# Documentation: https://github.com/cryoem/eman2/blob/master/programs/e2pdb2mrc.py
# EMAN2 convert a PDB atomic model to an MRC/HDF density map

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-A --apix)'{-A,--apix=}'[A/voxel]:val' \
  '(-R --res)'{-R,--res=}'[resolution in A]:val' \
  '(-B --box)'{-B,--box=}'[box size in pixels]:size' \
  '--het[include HET atoms in the map]' \
  '--center[move atomic center to center of box]' \
  '--trans=[additional translation to coordinates]:val' \
  '--chains=[chain identifiers to include]:chains' \
  '--info[display PDB info, no conversion performed]' \
  '--full[apply non-crystallographic symmetry for full structure]' \
  '--quiet[verbose is the default]' \
  '--model=[extract single numbered model from multi-model PDB]:n' \
  '--ppid=[parent process id]:pid' \
  '(-v --verbose)'{-v,--verbose=}'[verbose level]:n' \
  '--quick[use approximation to the Gaussian during insertion]' \
  '--addpdbbfactor[use bfactor as atom blurring radius]' \
  '--omit=[randomly omit this percentage of atoms]:pct' \
  '*:pdb file:_files' && ret=0

return ret
