#compdef ceinutil.py
# Documentation: https://github.com/ParmEd/ParmEd/blob/master/test/ceinutil.py
# AmberTools: create a CEIN file for constant Redox Potential MD with sander/pmemd

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-v --version)'{-v,--version}'[show version]' \
  '(-d --debug)'{-d,--debug}'[enable debugging]' \
  '(-o --output)'{-o,--output}'[output cein file]:cein file:_files' \
  '-p[input topology prmtop file]:prmtop:_files' \
  '-igb[Generalized Born model (1,2,5,7,8)]:igb:(1 2 5 7 8)' \
  '-intdiel[internal dielectric constant]:intdiel:' \
  '-resnames[titratable residue names to include]:resnames:' \
  '-notresnames[titratable residue names to exclude]:resnames:' \
  '-resnums[residue numbers to include]:resnums:' \
  '-notresnums[residue numbers to exclude]:resnums:' \
  '-mineo[minimum reference redox potential to include]:mineo:' \
  '-maxeo[maximum reference redox potential to include]:maxeo:' \
  '-states[default states for titratable residues]:states:' \
  '-system[name of system to titrate]:system:' \
  '--describe[describe a titratable residue]:resname:' \
  '(-l --list)'{-l,--list}'[list available titratable residues]' \
  '*:file:_files' && ret=0

return ret
