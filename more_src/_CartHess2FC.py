#compdef CartHess2FC.py
# derive bonded force constants from a Cartesian Hessian (MCPB toolset)

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '-i[input PDB file name]:file:_files -g "*.pdb"' \
  '-f[Hessian file (fchk for Gaussian or log for GAMESS-US)]:file:_files' \
  '--nstdpdb[non-standard PDB file is used]' \
  '--bavg[bond force constant average]' \
  '--aavg[angle force constant average]' \
  '--dih[print dihedral parameters]' \
  '--imp[print improper parameters]' \
  '--scalef[scale factor]:factor:' \
  '-v[QM software version]:software:(g03 g09 gms)' && ret=0

return ret
