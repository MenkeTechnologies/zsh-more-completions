#compdef sumtrees.py
# Documentation: https://dendropy.org/programs/sumtrees.html
# SumTrees phylogenetic tree summarization and annotation (DendroPy)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-i+[input tree format]:format' \
  '(-o --output-tree-filepath)'{-o,--output-tree-filepath}'+[save output to file]:output:_files' \
  '-F+[output format]:format:(nexus newick phylip nexml)' \
  '-x+[output file prefix]:prefix' \
  '(-b --burnin)'{-b,--burnin}'+[exclude initial trees from each file]:count' \
  '(-t --target-tree-filepath)'{-t,--target-tree-filepath}'+[target topology for support mapping]:tree:_files' \
  '(-s --summary-target)'{-s,--summary-target}'+[summary tree type]:type:(consensus mcct msct)' \
  '(-f --min-clade-freq)'{-f,--min-clade-freq}'+[minimum clade frequency threshold]:freq' \
  '-l+[support value display]:mode:(support keep clear)' \
  '(-p --percentages)'{-p,--percentages}'[express support as percentages]' \
  '(-d --decimals)'{-d,--decimals}'+[number of decimal places]:count' \
  '--force-rooted[treat all trees as rooted]' \
  '--force-unrooted[treat all trees as unrooted]' \
  '(-e --set-edges)'{-e,--set-edges}'+[edge length calculation method]:strategy' \
  '--summarize-node-ages[calculate node age statistics]' \
  '--collapse-negative-edges[remove negative branch lengths]' \
  '--force-minimum-edge-length=[set minimum edge length]:length' \
  '--root-target-at-outgroup=[root target using outgroup]:taxon' \
  '--root-target-at-midpoint[root target at midpoint]' \
  '--set-outgroup=[rotate tree with outgroup]:taxon' \
  '--tip-ages=[path to tip age data file]:file:_files' \
  '--tip-ages-format=[tip age file format]:format:(tsv csv json)' \
  '(-M --maximum-multiprocessing)'{-M,--maximum-multiprocessing}'[use all processor cores]' \
  '(-m --multiprocessing)'{-m,--multiprocessing}'+[number of parallel processes]:count' \
  '(-g --log-frequency)'{-g,--log-frequency}'+[reporting frequency]:freq' \
  '--taxon-name-file=[taxon name mapping file]:file:_files' \
  '--preserve-underscores[retain underscores in taxon labels]' \
  '--allow-unknown-target-tree-taxa[allow taxa not in input trees]' \
  '--ignore-missing-support[skip taxa with missing support]' \
  '--weighted-trees[process weighted tree data]' \
  '--suppress-annotations[omit edge length and node age summaries]' \
  '--no-taxa-block[exclude taxa block from output]' \
  '--no-analysis-metainformation[omit analysis metadata]' \
  '-c+[additional output comments]:comment' \
  '-r[reroot output trees]' \
  '(-q --quiet)'{-q,--quiet}'[suppress progress reporting]' \
  '-v[verbose output]' \
  '--citation[show citation information]' \
  '--usage-examples[display example commands]' \
  '--describe[show detailed descriptions]' \
  '*:tree files:_files' && ret=0

return ret
