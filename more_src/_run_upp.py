#compdef run_upp.py
# Documentation: https://github.com/smirarab/sepp/blob/master/README.UPP.md
# UPP - ultra-large alignment using phylogeny-aware profiles (part of SEPP)

local ret=1

_arguments -s -S \
  '-s[input file of unaligned sequences]:file:_files' \
  '-a[pre-computed backbone alignment file]:file:_files' \
  '-t[pre-computed backbone tree file]:file:_files' \
  '-B[backbone size]:size' \
  '-M[median full-length threshold for filtering fragments]:threshold' \
  '-m[data type]:type:(dna rna amino)' \
  '-b[nucleotide sequences file for backtranslation]:file:_files' \
  '-x[number of CPUs for parallel processing]:n' \
  '-c[configuration file for running UPP]:file:_files' \
  '*:file:_files' && ret=0

return ret
