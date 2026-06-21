#compdef sp_meridien.py
# Documentation: https://github.com/cryoem/eman2/blob/master/sphire/bin_py3/sp_meridien.py
# SPHIRE Meridien 3D refinement of single particle reconstructions

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--radius=[outer radius for rotational correlation (pixels)]:n' \
  '--xr=[range for translation search in x]:val' \
  '--ts=[step size of the translation search]:val' \
  '--inires=[initial resolution of the reference]:val' \
  '--mask3D=[3D mask file]:file:_files' \
  '--function=[reference preparation function]:func' \
  '--delta=[angular step of reference projections]:val' \
  '--shake=[shake range]:val' \
  '--small_memory[do not keep precalculated data in memory]' \
  '--ccfpercentage=[percentage of ccf peaks to keep]:pct' \
  '--nonorm[do not apply image norm correction]' \
  '--memory_per_node=[memory per node (GB)]:val' \
  '--an=[angular neighborhood for local search]:val' \
  '--do_final=[perform final reconstruction at given iteration]:n' \
  '--local_refinement[perform local refinement]' \
  '--continuation_orgstack=[original stack for continuation run]:file:_files' \
  '--continuation_initvol=[initial volume for continuation run]:file:_files' \
  '--subset=[subset selection text file]:file:_files' \
  '--oldrefdir=[old refinement directory for continuation]:dir:_files -/' \
  '--continuation_iter=[iteration to continue from]:n' \
  '--continuation_smearing=[smearing for continuation run]:n' \
  '--keep_groups[keep groups during continuation]' \
  '--center_method=[method for centering averages]:n' \
  '--target_radius=[target particle radius]:n' \
  '--skip_prealignment[skip pre-alignment step]' \
  '--initialshifts=[use header-stored shifts as initial]:val' \
  '--symmetry=[point-group symmetry of the structure]:sym' \
  '*:stack:_files' && ret=0

return ret
