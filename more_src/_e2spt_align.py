#compdef e2spt_align.py
# Documentation: https://github.com/cryoem/eman2/blob/master/programs/e2spt_align.py
# EMAN2 single particle tomography 3D particle alignment to reference

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--threads=[number of alignment threads]:n' \
  '--iter=[iteration number within path]:n' \
  '--goldstandard=[phase randomize refs past resolution]:angstrom' \
  '--goldcontinue[continue refining even/odd refs without randomizing]' \
  '--mask=[mask file aligned to input reference]:file:_files' \
  '--path=[folder path for results]:dir:_files -/' \
  '--sym=[symmetry of input]:sym' \
  '--maxres=[maximum resolution to consider]:angstrom' \
  '--minres=[minimum resolution to consider]:angstrom' \
  '--nsoln=[number of low-resolution solutions to keep]:n' \
  '--verbose=[verbosity level]:n' \
  '--ppid=[parent process id]:pid' \
  '--parallel=[thread/mpi parallelism to use]:spec' \
  '--transonly[translational alignment only]' \
  '--refine[local refinement from header xform]' \
  '--flcf[use slower aligner (experimental)]' \
  '--refinentry=[number of tests for refine mode]:n' \
  '--randphi[randomize phi during refine alignment]' \
  '--breaksym[enable symmetry breaking]' \
  '--breaksymsym=[symmetry to use for breaksym]:sym' \
  '--rand180[randomly add 180 rotation during refine]' \
  '--test180[test alignment with 180 rotations during refine]' \
  '--skipali[skip alignment (testing)]' \
  '--maxang=[maximum angular difference for refine mode]:deg' \
  '--maxshift=[maximum shift for refine mode]:n' \
  '--scipytest[test scipy optimizer]' \
  '--debug[enable debug mode]' \
  '*:particles:_files' && ret=0

return ret
