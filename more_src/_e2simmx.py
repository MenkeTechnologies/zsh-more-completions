#compdef e2simmx.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2simmx.html
# Computes a similarity matrix between projections and particles stacks

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--align=[aligner to use before image comparison]:aligner' \
  '--aligncmp=[name of aligner with construction arguments]:cmp' \
  '--ralign=[second stage aligner to refine alignment]:aligner' \
  '--raligncmp=[comparitor used by second stage aligner]:cmp' \
  '--cmp=[name of comparator for aligned images]:cmp' \
  '--prefilt[filter reference images to match particle power spectrum]' \
  '--prectf[apply CTF to each projection before comparison]' \
  '--mask=[mask image file to apply after alignment]:file:_files' \
  '--colmasks=[per-column mask file for refining alignments]:file:_files' \
  '--range=[process image range c0,r0,c1,r1]:range' \
  '--saveali[save alignment values, output 5 images]' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '--init[initialize output matrix file before range calc]' \
  '--fillzero[fill only zero matrix elements in existing output]' \
  '--exclude=[file listing image indices to exclude]:file:_files' \
  '--shrink=[shrink input particles before computing scores]:n' \
  '--nofilecheck[disable file checking]' \
  '(-c --check)'{-c,--check}'[argument validation only]' \
  '--ppid=[set parent process PID]:pid' \
  '--parallel=[parallelism configuration string]:spec' \
  '*:file:_files' && ret=0

return ret
