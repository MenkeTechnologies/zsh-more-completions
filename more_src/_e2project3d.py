#compdef e2project3d.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2project3d.html
# Generates 2-D projections of 3-D objects with configurable orientations

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--sym=[symmetry (c<n>,d<n>,h<n>,tet,oct,icos)]:sym' \
  '--orientgen=[orientation generator configuration]:gen' \
  '--outfile=[output file path (default e2proj.img)]:file:_files' \
  '--smear=[rotational smearing between phi steps]:n' \
  '--projector=[projector algorithm selection]:proj' \
  '(-a --append)'{-a,--append}'[append to existing output file]' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '(-c --check)'{-c,--check}'[validate command-line arguments]' \
  '--nofilecheck[disable file checking in validation]' \
  '--postprocess=[apply postprocessor to projections]:proc' \
  '--cuda[enable CUDA acceleration]' \
  '--prethreshold[apply automatic threshold before projecting]' \
  '--compressbits=[compression bits, 0=lossless (default 10)]:n' \
  '--ppid=[set parent process PID]:pid' \
  '--parallel=[parallelism configuration]:spec' \
  '*:volume file:_files' && ret=0

return ret
