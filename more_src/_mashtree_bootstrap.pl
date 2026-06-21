#compdef mashtree_bootstrap.pl
# Documentation: https://github.com/lskatz/mashtree
# Run mashtree multiple times with bootstrapping support

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--reps=[number of bootstrap replicates]:reps:' \
  '--numcpus=[number of CPU threads]:cpus:' \
  '--tempdir=[directory for temporary files]:dir:_files -/' \
  '--outmatrix=[output distance matrix file]:file:_files' \
  '--file-of-files[read filenames from input files]' \
  '*:genome:_files' && ret=0

return ret
