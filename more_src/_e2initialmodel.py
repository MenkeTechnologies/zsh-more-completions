#compdef e2initialmodel.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2initialmodel.html
# Generate multiple possible 3-D initial models from reference-free class-averages

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--input=[class-averages file for initial model construction]:file:_files' \
  '--iter=[total refinement iterations]:n' \
  '--tries=[number of different initial models to generate]:n' \
  '--shrink=[shrink input particles by integer factor]:n' \
  '--sym=[symmetry (c<n>,d<n>,h<n>,tet,oct,icos)]:sym' \
  '--automaskexpand=[voxels for post-threshold mask expansion]:n' \
  '--randorient[seed by randomizing input orientations]' \
  '--maskproc=[additional mask processing after automask]:proc' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '--orientgen=[orientation generator type spec]:gen' \
  '(-P --parallel)'{-P,--parallel}'=[enable parallel processing]:spec' \
  '--ppid=[set parent process PID]:pid' \
  '*:file:_files' && ret=0

return ret
