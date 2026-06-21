#compdef e2spt_sgd.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/programs/e2spt_sgd.py
# EMAN2: generate subtomogram initial model via stochastic gradient descent

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(--reference --ref)'{--reference,--ref}'=[3D reference for initial model generation]:file:_files' \
  '--mask=[mask file applied to initial model]:file:_files' \
  '--sym=[symmetry]:sym:' \
  '--filterto=[filter map to frequency after each iteration]:f:' \
  '--fourier[gradient descent in fourier space]' \
  '--batchsize=[SGD batch size]:n:' \
  '--learnrate=[learning rate]:f:' \
  '--niter=[number of iterations]:n:' \
  '--nbatch=[number of batches per iteration]:n:' \
  '--applysym[apply symmetry]' \
  '--writemovie[write all temporary files as a stack]' \
  '--shrink=[shrink factor for particles]:f:' \
  '--path=[path of output]:dir:_files -/' \
  '(-v --verbose)'{-v,--verbose}'=[verbose level 0-9]:level:' \
  '--ppid=[ppid]:pid:' \
  '--refine[start from xform.align3d in header]' \
  '*:particles:_files' && ret=0

return ret
