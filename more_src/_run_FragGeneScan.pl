#compdef run_FragGeneScan.pl
# Documentation: https://github.com/gaberoo/FragGeneScan
# run_FragGeneScan.pl - predict prokaryotic genes in short and complete sequences

local ret=1

_arguments -s -S \
  '-genome=-[sequence file name including full path]:file:_files' \
  '-out=-[output file name including full path]:file:_files' \
  '-complete=-[1 for complete genomic sequences, 0 for short reads]:complete:(0 1)' \
  '-train=-[model parameter file in the train directory]:train:(complete sanger_5 sanger_10 454_5 454_10 454_30 illumina_5 illumina_10)' \
  '-thread=-[number of threads (default 1)]:n:' && ret=0

return ret
