#compdef abinp.py
# Documentation: https://abinit.github.io/abipy/scripts/abinp.html
# AbiPy: generate a minimalist input file for Abinit

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-V --version)'{-V,--version}'[show version]' \
  '*'{-v,--verbose}'[increase verbosity]' \
  '--loglevel=[set loglevel]:level:(CRITICAL ERROR WARNING INFO DEBUG)' \
  '1:command:((validate\:"validate an Abinit input file in dry-run mode" autoparal\:"compute autoparal configurations" abispg\:"find space group" ibz\:"k-points in the irreducible zone" phperts\:"list phonon perturbations" gs\:"ground-state input" ebands\:"band structure input" phonons\:"phonon input" g0w0\:"G0W0 input" anaph\:"Anaddb input for phonon bands DOS" vasp\:"build VASP input" wannier90\:"wannier90 template input" lobster\:"Lobster input" slurm\:"Slurm submission template"))' \
  '*::arg:_files' && ret=0

return ret
