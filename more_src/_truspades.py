#compdef truspades.py
# Documentation: https://ablab.github.io/spades/running.html
# SPAdes pipeline for assembling TruSeq barcoded libraries (deprecated wrapper)

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show usage information]' \
  '(-v --version)'{-v,--version}'[report SPAdes version]' \
  '-o[output directory]:dir:_files -/' \
  '-1[forward paired-end reads]:file:_files' \
  '-2[reverse paired-end reads]:file:_files' \
  '--12=[interlaced paired reads]:file:_files' \
  '-s[unpaired or single reads]:file:_files' \
  '-k[k-mer values (odd, ascending, max 127)]:kmers' \
  '(-t --threads)'{-t,--threads}'[number of CPU cores]:count' \
  '(-m --memory)'{-m,--memory}'[RAM limit in GB]:gb' \
  '--tmp-dir[location for temporary files]:dir:_files -/' \
  '--only-assembler[skip error correction]' \
  '--continue[resume from last checkpoint]' \
  '--restart-from[begin from specific stage]:stage:(ec as mc last)' \
  '--phred-offset=[quality score encoding]:offset:(33 64)' \
  '*:file:_files' && ret=0

return ret
