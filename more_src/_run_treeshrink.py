#compdef run_treeshrink.py
# Documentation: https://github.com/uym2/TreeShrink
# TreeShrink detect and remove abnormally long branches from trees

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-i --indir)'{-i,--indir}'+[top-level input directory of per-gene subdirectories]:dir:_files -/' \
  '(-t --tree)'{-t,--tree}'+[input tree file(s)]:tree:_files' \
  '(-g --g2sp)'{-g,--g2sp}'+[gene-to-species mapping file]:map:_files' \
  '(-a --alignment)'{-a,--alignment}'+[name of alignment files in gene subdirectories]:alignment' \
  '(-c --centroid)'{-c,--centroid}'[use centroid rerooting outlier test]' \
  '(-k --k)'{-k,--k}'+[maximum number of species to test as outliers]:count' \
  '(-s --kscaling)'{-s,--kscaling}'+[heuristic for setting default k value]:scaling' \
  '(-q --quantiles)'{-q,--quantiles}'+[false positive tolerance rate alpha]:alpha' \
  '(-b --minImpact)'{-b,--minImpact}'+[percentage threshold for per-species removal]:percent' \
  '(-m --mode)'{-m,--mode}'+[analysis mode]:mode:(per-gene per-species all-genes)' \
  '(-o --outdir)'{-o,--outdir}'+[output folder location]:dir:_files -/' \
  '(-O --outprefix)'{-O,--outprefix}'+[output file prefix]:prefix' \
  '(-f --force)'{-f,--force}'[overwrite existing output]' \
  '(-p --tempdir)'{-p,--tempdir}'+[temporary directory]:dir:_files -/' \
  '(-x --exceptions)'{-x,--exceptions}'+[exclude specific taxa from analysis]:taxa' \
  '(-v --version)'{-v,--version}'[show version]' \
  '*:tree file:_files' && ret=0

return ret
