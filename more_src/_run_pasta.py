#compdef run_pasta.py
# Documentation: https://github.com/smirarab/pasta
# PASTA - ultra-large multiple sequence alignment

local ret=1

_arguments -s -S \
  '-i[input FASTA file of sequences]:file:_files' \
  '-t[optional starting tree for the analysis]:file:_files' \
  '-o[output directory for results]:dir:_files -/' \
  '-j[job name for output files]:job' \
  '-d[sequence data type]:type:(dna rna protein)' \
  '--aligner[subset alignment tool]:aligner:(mafft ginsi homologs contralign probcons)' \
  '--merger[pairwise merge tool]:merger:(opal muscle)' \
  '--tree-estimator[tree estimation tool]:estimator:(fasttree raxml)' \
  '--iter-limit[maximum number of iterations]:n' \
  '--time-limit[time constraint for execution]:seconds' \
  '--num-cpus[number of threads for parallel processing]:n' \
  '--max-mem-mb[memory limit in MB]:mb' \
  '--temporaries[temporary file directory]:dir:_files -/' \
  '-k[preserve temporary files after completion]' \
  '--keepalignmenttemps[retain alignment temporary files]' \
  '--mask-gappy-sites[site masking gap threshold]:pct' \
  '--aligned[input sequences are pre-aligned]' \
  '--exportconfig[generate a configuration file without executing]:file:_files' \
  '*:file:_files' && ret=0

return ret
