#compdef disco.py
# Documentation: https://github.com/JSdoubleL/DISCO
# DISCO decompose multi-copy gene trees into single-copy trees

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-i --input)'{-i,--input}'+[input newick tree file]:tree:_files' \
  '(-o --output)'{-o,--output}'+[output newick tree file]:output:_files' \
  '(-d --delimiter)'{-d,--delimiter}'+[delimiter separating species name from leaf label]:delimiter' \
  '(-n --nth-delimiter)'{-n,--nth-delimiter}'+[split on Nth delimiter]:n' \
  '(-m --minimum)'{-m,--minimum}'+[minimum taxa required for tree output]:count' \
  '(-s --single-tree)'{-s,--single-tree}'[output only single largest tree per gene tree]' \
  '(-v --verbose)'{-v,--verbose}'[enable verbose output]' \
  '--keep-labels[keep original leaf labels instead of species name]' \
  '--no-decomp[output rooted trees without decomposition]' \
  '--outgroups[write outgroups to txt file]' \
  '--remove-in-paralogs[remove in-paralogs before rooting/scoring]' \
  '*:tree file:_files' && ret=0

return ret
