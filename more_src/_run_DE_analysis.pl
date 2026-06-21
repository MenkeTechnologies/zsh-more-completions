#compdef run_DE_analysis.pl
# Documentation: https://github.com/trinityrnaseq/trinityrnaseq/wiki/Trinity-Differential-Expression
# Trinity util: run differential expression analysis (edgeR/DESeq2/voom)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-m --matrix)'{-m,--matrix=}'[matrix of raw read counts]:file:_files' \
  '--method=[DE detection method]:method:(edgeR DESeq2 voom)' \
  '(-s --samples_file)'{-s,--samples_file=}'[tab-delimited replicate relationships]:file:_files' \
  '--min_reps_min_cpm=[min replicates and CPM threshold]:val:' \
  '(-o --output)'{-o,--output=}'[output directory]:dir:_files -/' \
  '--reference_sample=[single reference sample for pairwise comparisons]:sample:' \
  '--contrasts=[tab-delimited sample pairs to compare]:file:_files' \
  '--dispersion=[edgeR dispersion value]:float:' \
  '*:file:_files' && ret=0

return ret
