#compdef e2spt_refine.py
# Documentation: https://github.com/cryoem/eman2/blob/master/programs/e2spt_refine.py
# EMAN2 single particle tomography iterative subtomogram refinement

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(--reference --ref)'{--reference=,--ref=}'[3D reference for alignment/averaging]:file:_files' \
  '--mask=[mask file applied to initial model]:file:_files' \
  '--maskalign=[mask file applied to 3D alignment reference]:file:_files' \
  '--niter=[number of iterations]:n' \
  '--sym=[symmetry]:sym' \
  '--maxres=[maximum resolution to consider]:angstrom' \
  '--minres=[minimum resolution to consider]:angstrom' \
  '--mass=[mass; -1 skips by-mass normalization]:val' \
  '--localfilter[deprecated; use --tophat]' \
  '--tophat=[filter mode]:mode:(local localwiener global)' \
  '--goldstandard=[phase randomization resolution]:n' \
  '--goldcontinue[continue from existing gold standard refinement]' \
  '--restarget=[resolution you expect to achieve]:angstrom' \
  '--setsf=[structure factor]:file:_files' \
  '--pkeep=[fraction of particles to keep]:frac' \
  '--maxtilt=[zero data beyond specified tilt angle]:deg' \
  '--path=[name of refinement folder]:dir:_files -/' \
  '--smooth=[smoothing factor for subtlt]:val' \
  '--maxang=[maximum angular difference in refine mode]:deg' \
  '--maxshift=[maximum shift in pixels]:n' \
  '--threads=[number of threads]:n' \
  '--parallel=[thread/mpi parallelism to use]:spec' \
  '--transonly[translational alignment only]' \
  '--refine[local refinement from header xform]' \
  '--refinentry=[number of local perturbations to initialize]:n' \
  '--realign[realign average to initial reference]' \
  '--randphi[randomize phi for refine search]' \
  '--rand180[include 180 rotation for refine search]' \
  '--test180[test alignment with 180 rotations]' \
  '--resume[resume from previous run]' \
  '--scipy[test scipy refinement]' \
  '--breaksym[break symmetry]' \
  '--breaksymsym=[different symmetry for breaksym]:sym' \
  '--symalimask=[realign each asymmetric unit to reference]:file:_files' \
  '--ppid=[parent process id]:pid' \
  '(-v --verbose)'{-v,--verbose=}'[verbose level]:n' \
  '*:particles:_files' && ret=0

return ret
