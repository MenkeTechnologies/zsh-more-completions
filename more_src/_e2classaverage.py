#compdef e2classaverage.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2classaverage.html
# Produces iterative class-averages of particle images with optional CTF correction

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--input=[input particle stack name]:file:_files' \
  '--output=[output class-average stack name]:file:_files' \
  '--oneclass=[generate single class-average by number]:n' \
  '--classmx=[classification matrix file for grouping]:file:_files' \
  '--focused=[reference projection file for first iteration]:file:_files' \
  '--ref=[initial alignment reference]:file:_files' \
  '--storebad[output failed class-averages with 1-to-1 numbering]' \
  '--compressbits=[compression bits (default 10)]:n' \
  '--decayedge[apply edge decay to zero on output]' \
  '--resultmx=[output file for result matrix]:file:_files' \
  '--iter=[number of iterations (default 1)]:n' \
  '--prefilt[filter references to match particle power spectrum]' \
  '--prectf[apply particle CTF to references]' \
  '--align=[aligner for particle-to-average alignment]:aligner' \
  '--aligncmp=[comparitor for alignment (default ccc)]:cmp' \
  '--ralign=[second-stage refinement aligner]:aligner' \
  '--raligncmp=[comparitor for refinement aligner]:cmp' \
  '--averager=[averaging method for class generation]:averager' \
  '--setsfref[impose reference structure factor on class-average]' \
  '--cmp=[comparitor for quality scoring]:cmp' \
  '--keep=[fraction of particles to retain per class]:frac' \
  '--keepsig[interpret keep threshold in standard deviations]' \
  '--automask[apply 2-D automask before centering]' \
  '--center=[centering algorithm or nocenter]:algo' \
  '--bootstrap[historical option (ignored)]' \
  '--normproc=[normalization processor]:proc' \
  '--usefilt=[filtered particle file for alignment only]:file:_files' \
  '--idxcache[historical option (ignored)]' \
  '--dbpath[historical option (ignored)]' \
  '--resample[enable bootstrap resampling for variance maps]' \
  '--odd[include only odd-numbered particles]' \
  '--even[include only even-numbered particles]' \
  '--parallel=[parallelism argument]:spec' \
  '--saveali[write aligned particles to aligned.hdf]' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '(-d --debug)'{-d,--debug}'[enable debugging output]' \
  '--nofilecheck[disable file checking]' \
  '(-c --check)'{-c,--check}'[argument validation only]' \
  '--ppid=[set parent process PID]:pid' && ret=0

return ret
