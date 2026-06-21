#compdef moltemplate.sh
# Documentation: http://moltemplate.org/doc/index.html
# Build LAMMPS data and input files from .lt molecule template files

local ret=1

_arguments -s -S \
  '--help[show help]' \
  '(-atomstyle -atom-style -atom_style)'{-atomstyle,-atom-style,-atom_style}'[set the LAMMPS atom_style]:atom style:(full molecular atomic charge angle bond)' \
  '-pdb[read atomic coordinates from a PDB file]:PDB file:_files -g "*.pdb"' \
  '-xyz[read atomic coordinates from an XYZ file]:XYZ file:_files -g "*.xyz"' \
  '-dump[read atomic coordinates from a LAMMPS dump file]:dump file:_files' \
  '-raw[read atomic coordinates from a raw text file]:raw file:_files' \
  '*-a[assign a variable: VAR VALUE, or assignments file]:assignment' \
  '*-b[assign a variable (backquote-safe): VAR VALUE]:assignment' \
  '-nocheck[skip syntax and consistency checks]' \
  '-checkff[check that the force field is fully defined]' \
  '-allow-wildcards[allow wildcard characters in type names]' \
  '-forbid-wildcards[forbid wildcard characters in type names]' \
  '-overlay-bonds[allow multiple bonds between the same atoms]' \
  '-overlay-angles[allow multiple angle interactions for the same atoms]' \
  '-overlay-dihedrals[allow multiple dihedral interactions for the same atoms]' \
  '-overlay-impropers[allow multiple improper interactions for the same atoms]' \
  '-overlay-all[allow overlapping bonded interactions of all kinds]' \
  '-report-duplicates[report duplicate interactions]:filter id:_files' \
  '-bond-symmetry[bond symmetry rules file or NONE]:file:_files -g "*.py"' \
  '-angle-symmetry[angle symmetry rules file or NONE]:file:_files -g "*.py"' \
  '-dihedral-symmetry[dihedral symmetry rules file or NONE]:file:_files -g "*.py"' \
  '-improper-symmetry[improper symmetry rules file or NONE]:file:_files -g "*.py"' \
  '-lammps-script[name of the LAMMPS input script to generate]:basename' \
  '-vmd[run VMD on the resulting structure]' \
  '-molc[generate output for the MOLC coarse-grained model]' \
  '-run-example[run a bundled example]' \
  '*:lt file:_files -g "*.lt"' && ret=0

return ret
