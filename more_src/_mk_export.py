#compdef mk_export.py
# Documentation: https://meeko.readthedocs.io/en/develop/export_cli_options.html
# mk_export.py - Meeko export of docking results to SDF/PDB.

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--suffix=[suffix for output filenames]:suffix:' \
  '(-s --write_sdf)'{-s+,--write_sdf=}'[SDF output filename]:file:_files' \
  '(-j --read_json)'{-j+,--read_json=}'[receptor JSON from mk_prepare_receptor]:file:_files' \
  '(-p --write_pdb)'{-p+,--write_pdb=}'[PDB output filename]:file:_files' \
  '--all_dlg_poses[output all AD-GPU DLG poses]' \
  '(-k --keep_flexres_sdf)'{-k,--keep_flexres_sdf}'[include flexible residues in SDF]' \
  '*:docking results (PDBQT/DLG):_files' && ret=0

return ret
