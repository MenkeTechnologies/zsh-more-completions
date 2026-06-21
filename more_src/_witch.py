#compdef witch.py run_witch.py
# Documentation: https://github.com/c5shen/WITCH
# WITCH - multiple sequence alignment with eHMMs

local ret=1

_arguments -s -S \
  '-i[input file of unaligned sequences]:file:_files' \
  '-b[backbone alignment file (FASTA, gzip ok)]:file:_files' \
  '-e[backbone tree file]:file:_files' \
  '-q[query sequences file of unaligned fragments]:file:_files' \
  '-d[output directory for results]:dir:_files -/' \
  '-o[output filename for the final alignment]:file:_files' \
  '-w[weighting scheme (0 for bit scores)]:scheme' \
  '-k[number of top-ranked HMMs per sequence]:n' \
  '(-c --config-file)'{-c,--config-file}'[path to user config file]:file:_files' \
  '--save-weight[save weight calculations to disk]:bool:(0 1)' \
  '--keep-decomposition[preserve decomposition results]:bool:(0 1)' \
  '--num-cpus[number of CPUs for parallel processing]:n' \
  '--molecule[molecule type]:type:(protein nucleotide)' \
  '--keeptemp[retain temporary files after execution]' \
  '--timeout[timeout threshold for operations]:seconds' \
  '*:file:_files' && ret=0

return ret
