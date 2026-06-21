#compdef abicomp.py
# Documentation: https://abinit.github.io/abipy/scripts/abicomp.html
# AbiPy: compare multiple FILES of the same type

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-V --version)'{-V,--version}'[show version]' \
  '*'{-v,--verbose}'[increase verbosity]' \
  '--loglevel=[set loglevel]:level:(CRITICAL ERROR WARNING INFO DEBUG)' \
  '1:command:((structure\:"compare structures" spg\:"compare space groups" xrd\:"compare XRD patterns" ebands\:"compare electron bands" edos\:"compare electron DOS" phbands\:"compare phonon bands" phdos\:"compare phonon DOS" ddb\:"compare DDB files" anaddb\:"compare anaddb results" a2f\:"compare Eliashberg functions" sigeph\:"compare e-ph self-energies" gsr\:"compare GSR files" hist\:"compare HIST files" psps\:"compare pseudopotentials" optic\:"compare optic results" gs_scf\:"compare GS SCF cycles" time\:"compare timing data" text\:"compare text files"))' \
  '*::file:_files' && ret=0

return ret
