#compdef ca_disco.py
# Documentation: https://github.com/JSdoubleL/DISCO
# CA-DISCO concatenation-analysis decomposition of gene-family alignments

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-i --input)'{-i,--input}'+[input newick tree file]:tree:_files' \
  '(-a --alignment)'{-a,--alignment}'+[text file of paths to alignment files]:file:_files' \
  '(-f --format)'{-f,--format}'+[alignment file format]:format:(fasta phylip)' \
  '(-o --output)'{-o,--output}'+[output concatenated alignment file]:output:_files' \
  '(-m --filter)'{-m,--filter}'+[minimum taxa required for sequence group]:count' \
  '(-d --delimiter)'{-d,--delimiter}'+[delimiter separating species name from leaf label]:delimiter' \
  '(-p --partition)'{-p,--partition}'[create partition file]' \
  '*:tree file:_files' && ret=0

return ret
