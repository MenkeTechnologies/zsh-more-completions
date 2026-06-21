#compdef mk_prepare_ligand.py
# Documentation: https://meeko.readthedocs.io/en/develop/lig_cli_options.html
# mk_prepare_ligand.py - Meeko small-molecule PDBQT preparation for AutoDock.

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-i --mol)'{-i+,--mol=}'[input molecule file (MOL2/SDF/...)]:file:_files' \
  '--name_from_prop=[set molecule name from RDKit/SDF property]:prop:' \
  '(-o --out)'{-o+,--out=}'[output PDBQT filename]:file:_files' \
  '--multimol_outdir=[directory for multi-molecule output]:dir:_files -/' \
  '--multimol_prefix=[prefix replacing internal molecule name]:prefix:' \
  '(-z --multimol_targz)'{-z,--multimol_targz}'[compress output into .tar.gz]' \
  '--multimol_targz_size=[files per archive]:n:' \
  '(-c --config_file)'{-c+,--config_file=}'[JSON config file]:file:_files' \
  '--rigid_macrocycles[keep macrocycles rigid]' \
  '--macrocycle_allow_A[allow bond break with atom type A]' \
  '--keep_chorded_rings[retain all rings from exhaustive perception]' \
  '--keep_equivalent_rings[retain equivalent-sized rings]' \
  '--min_ring_size=[min atoms in ring for opening]:n:' \
  '(-w --hydrate)'{-w,--hydrate}'[add water molecules]' \
  '--merge_these_atom_types=[atom types to merge]:types:' \
  '(-r --rigidify_bonds_smarts)'{-r+,--rigidify_bonds_smarts=}'[SMARTS to rigidify bonds]:smarts:' \
  '(-b --rigidify_bonds_indices)'{-b+,--rigidify_bonds_indices=}'[atom indices defining a bond]:idx:' \
  '(-a --flexible_amides)'{-a,--flexible_amides}'[allow amide bonds to rotate]' \
  '(-p --load_atom_params)'{-p+,--load_atom_params=}'[SMARTS atom typing JSON]:file:_files' \
  '(-aa --add_atom_types)'{-aa+,--add_atom_types=}'[additional atom types JSON]:json:' \
  '--double_bond_penalty=[penalty value]:n:' \
  '--charge_model=[charge model]:model:(gasteiger nagl espaloma zero)' \
  '--bad_charge_ok[allow NaN/Inf charges]' \
  '--add_index_map[include atom index mapping]' \
  '--remove_smiles[exclude SMILES from output]' \
  '--reactive_smarts=[SMARTS for reactive group]:smarts:' \
  '--reactive_smarts_idx=[1-based reactive atom index]:n:' \
  '--receptor=[receptor file (.pdb/.mmcif)]:file:_files' \
  '--rec_residue=[receptor residue for attachment]:res:' \
  '--tether_smarts=[SMARTS for ligand attachment atoms]:smarts:' \
  '--tether_smarts_indices=[1-based atom indices]:idx:' \
  '*:file:_files' && ret=0

return ret
