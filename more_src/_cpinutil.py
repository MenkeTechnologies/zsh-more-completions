#compdef cpinutil.py
# Documentation: https://github.com/ParmEd/ParmEd/blob/master/test/cpinutil.py
# AmberTools: create a CPIN file for constant pH MD with sander/pmemd

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-v --version)'{-v,--version}'[show version]' \
  '(-d --debug)'{-d,--debug}'[enable debugging]' \
  '(-oldfmt --old-format)'{-oldfmt,--old-format}'[write old-format cpin]' \
  '(-o --output)'{-o,--output}'[output cpin file]:cpin file:_files' \
  '(-op --output-prmtop)'{-op,--output-prmtop}'[output prmtop with cpH radii]:prmtop:_files' \
  '-p[input topology prmtop file]:prmtop:_files' \
  '-igb[Generalized Born model (1,2,5,7,8)]:igb:(1 2 5 7 8)' \
  '-intdiel[internal dielectric constant]:intdiel:' \
  '-resnames[titratable residue names to include]:resnames:' \
  '-notresnames[titratable residue names to exclude]:resnames:' \
  '-resnums[residue numbers to include]:resnums:' \
  '-notresnums[residue numbers to exclude]:resnums:' \
  '-minpKa[minimum reference pKa to include]:minpKa:' \
  '-maxpKa[maximum reference pKa to include]:maxpKa:' \
  '-states[default states for titratable residues]:states:' \
  '-system[name of system to titrate]:system:' \
  '--describe[describe a titratable residue]:resname:' \
  '(-l --list)'{-l,--list}'[list available titratable residues]' \
  '*:file:_files' && ret=0

return ret
