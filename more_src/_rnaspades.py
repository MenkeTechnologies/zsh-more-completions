#compdef rnaspades.py
# Documentation: https://ablab.github.io/spades/rna.html
# SPAdes transcriptomic (RNA) assembly mode

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-v --version)'{-v,--version}'[show version]' \
  '-o+[output directory]:dir:_files -/' \
  '-1+[file with forward reads]:file:_files' \
  '-2+[file with reverse reads]:file:_files' \
  '-s+[file with unpaired reads]:file:_files' \
  '--12=[interlaced paired-end reads]:file:_files' \
  '--merged=[file with merged paired reads]:file:_files' \
  '-k+[comma-separated list of k-mer sizes]:kmers' \
  '(-t --threads)'{-t+,--threads=}'[number of threads]:threads' \
  '(-m --memory)'{-m+,--memory=}'[memory limit in Gb]:gb' \
  '--tmp-dir=[directory for temporary files]:dir:_files -/' \
  '--ss=[strand specificity]:type:(rf fr)' \
  '--fast[speed up isoform detection]' \
  '--pacbio=[file with PacBio CLR reads]:file:_files' \
  '--nanopore=[file with Oxford Nanopore reads]:file:_files' \
  '--phred-offset=[PHRED quality offset]:offset:(33 64)' \
  '--only-error-correction[run read error correction only]' \
  '--only-assembler[run assembly module only]' \
  '--continue[continue from last checkpoint]' \
  '--restart-from=[restart from checkpoint]:checkpoint' \
  '--disable-gzip-output[do not compress corrected reads]' \
  '--test[run test installation]' \
  '*:file:_files' && ret=0

return ret
