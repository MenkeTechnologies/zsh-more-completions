#compdef e2refine2d.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2refine2d.html
# Produce reference-free class averages from mixed unaligned particle images

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--path=[path for refinement (default auto)]:dir:_files -/' \
  '--input=[file containing particle data]:file:_files' \
  '--ncls=[number of classes to generate]:n' \
  '--normproj[normalize projected vectors into MSA subspace]' \
  '--fastseed[quickly seed k-means for many classes]' \
  '--iter=[total number of refinement iterations]:n' \
  '--nbasisfp=[number of MSA basis vectors for classification]:n' \
  '--automask[automasking during class-averaging]' \
  '--naliref=[number of alignment references]:n' \
  '(-P --parallel)'{-P,--parallel}'=[run in parallel]:spec' \
  '--center=[centering algorithm selection]:algo' \
  '(-c --check)'{-c,--check}'[verify directory contents and dimensions]' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '--maxshift=[maximum particle translation in x and y]:n' \
  '--exclude=[file listing image indices to exclude]:file:_files' \
  '--resume[resume after last completed iteration]' \
  '--initial=[starting class-averages file]:file:_files' \
  '--minchange=[min particles changing groups before termination]:n' \
  '--simalign=[first-stage aligner]:aligner' \
  '--simaligncmp=[first-stage aligner comparitor]:cmp' \
  '--simralign=[second-stage aligner parameters]:aligner' \
  '--simraligncmp=[second-stage aligner comparitor]:cmp' \
  '--simcmp=[comparitor for aligned images]:cmp' \
  '--shrink=[shrink input particles before scoring]:n' \
  '--classkeep=[fraction of particles to keep per class]:frac' \
  '--classkeepsig[use sigma-based criterion]' \
  '--classiter=[iterations for class-average generation]:n' \
  '--classalign=[aligner for multi-iteration alignment]:aligner' \
  '--classaligncmp=[first-stage class aligner comparitor]:cmp' \
  '--classralign=[second-stage class aligner]:aligner' \
  '--classraligncmp=[second-stage class aligner comparitor]:cmp' \
  '--classaverager=[averager for class generation]:averager' \
  '--classcmp=[comparitor for similarity scores]:cmp' \
  '--classnormproc=[normalization during class averaging]:proc' \
  '--classrefsf[use setsfref for better filtered averages]' \
  '--ppid=[set parent process PID]:pid' \
  '*:file:_files' && ret=0

return ret
