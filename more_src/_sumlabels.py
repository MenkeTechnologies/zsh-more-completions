#compdef sumlabels.py
# Documentation: https://dendropy.org/programs/sumlabels.html
# SumLabels merge labels from multiple source trees onto a target tree (DendroPy)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-t --target)'{-t,--target}'+[target tree file to write labels to]:tree:_files' \
  '--preserve-target-labels[retain existing labels on target tree]' \
  '--rooted[interpret trees as rooted]' \
  '--unrooted[interpret trees as unrooted]' \
  '--ignore-missing-source[skip missing source tree files]' \
  '(-o --output)'{-o,--output}'+[output file path]:output:_files' \
  '(-s --separator)'{-s,--separator}'+[separator between labels from sources]:separator' \
  '--no-taxa-block[exclude taxa block from output]' \
  '(-c --additional-comments)'{-c,--additional-comments}'+[extra comments to add to output]:comment' \
  '--to-newick[save in Newick/Phylip format]' \
  '--to-phylip[save in Phylip format]' \
  '(-r --replace)'{-r,--replace}'[overwrite output file without confirmation]' \
  '(-q --quiet)'{-q,--quiet}'[suppress logging and progress messages]' \
  '*:source tree files:_files' && ret=0

return ret
