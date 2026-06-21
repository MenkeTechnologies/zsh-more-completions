#compdef sp_sort3d.py
# Documentation: https://github.com/cryoem/eman2/blob/master/sphire/bin_py3/sp_sort3d.py
# SPHIRE 3D sorting/clustering of heterogeneous single particle datasets

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--focus=[binary 3D mask for focused clustering]:file:_files' \
  '--ir=[inner radius for rotational correlation]:n' \
  '--radius=[particle radius in pixels]:n' \
  '--maxit=[maximum number of iterations]:n' \
  '--rs=[step between rings in rotational correlation]:n' \
  '--xr=[range for translation search in x]:range' \
  '--yr=[range for translation search in y]:range' \
  '--ts=[step size of translation search]:val' \
  '--delta=[angular step of reference projections]:val' \
  '--an=[angular neighborhood for local searches]:val' \
  '--center=[center volume using center of gravity]:n' \
  '--nassign=[reassignment iterations per angular step]:n' \
  '--nrefine=[alignment iterations per angular step]:n' \
  '--CTF[perform CTF correction during clustering]' \
  '--stoprnct=[minimum assignment change percentage to stop]:val' \
  '--sym=[symmetry of the structure]:sym' \
  '--function=[reference preparation function]:func' \
  '--independent=[number of independent runs]:n' \
  '--number_of_images_per_group=[number of groups]:n' \
  '--low_pass_filter=[absolute frequency of low-pass filter]:val' \
  '--nxinit=[initial image size for sorting]:n' \
  '--unaccounted[reconstruct unaccounted images]' \
  '--seed=[random seed for initial assignment]:n' \
  '--smallest_group=[minimum members for identified group]:n' \
  '--sausage[way of filtering volume]' \
  '--chunk0=[chunk0 for computing margin of error]:file:_files' \
  '--chunk1=[chunk1 for computing margin of error]:file:_files' \
  '--PWadjustment=[1-D power spectrum of PDB file]:file:_files' \
  '--protein_shape=[protein shape type]:shape:(g f)' \
  '--upscale=[scaling parameter for power spectrum adjustment]:val' \
  '--wn=[optimal window size for data processing]:n' \
  '--interpolation=[3D reconstruction interpolation method]:method:(trl 4nn)' \
  '*:stack:_files' && ret=0

return ret
