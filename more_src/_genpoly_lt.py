#compdef genpoly_lt.py
# Documentation: https://github.com/jewettaij/moltemplate/blob/master/doc/doc_genpoly_lt.md
# Generate a moltemplate .lt file describing a polymer from a coordinate file

local ret=1

_arguments -s -S \
  '-polymer-name[name of the moltemplate object to create]:name' \
  '-monomer-name[name of the monomer object replicated along the polymer]:name' \
  '-sequence[monomer sequence file for heteropolymers and end-caps]:file:_files' \
  '-bond[add bonds between successive monomers]:bond' \
  '-angle[add 3-body angle interactions between monomers]:angle' \
  '-dihedral[add 4-body dihedral interactions between monomers]:dihedral' \
  '-improper[add 4-body improper interactions between monomers]:improper' \
  '-inherits[add force field inheritance to the polymer definition]:parent' \
  '-header[insert import statements at file beginning]:text' \
  '-helix[rotate each monomer around its axis by angle in degrees]:angle' \
  '-helix-angles[per-monomer rotation angles from file]:file:_files' \
  '-orientations[monomer orientations via 3x3 rotation matrices]:file:_files' \
  '-quaternions[monomer orientations via quaternions]:file:_files' \
  '-axis[polymer axis direction in the original monomer]:axis' \
  '-circular[circular vs linear polymer configuration]:mode:(yes no connected)' \
  '-cuts[cut polymer at given locations to create multiple chains]:file:_files' \
  '-polymer-directions[reverse coordinate reading per polymer]:file:_files' \
  '-dir-indices[control monomer orientation direction calculation]:indices' \
  '-padding[extra space around the polymer bounding box]:padding' \
  '-in[coordinate file to read instead of stdin]:coord file:_files' \
  '*:coordinate file:_files' && ret=0

return ret
