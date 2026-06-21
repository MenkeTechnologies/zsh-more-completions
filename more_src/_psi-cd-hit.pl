#compdef psi-cd-hit.pl
# Documentation: https://github.com/weizhongli/cdhit/blob/master/psi-cd-hit/psi-cd-hit-local.pl
# PSI-CD-HIT - cluster proteins at low identity thresholds using BLAST

local ret=1

_arguments -s \
  '-i[input db name, required]:input:_files' \
  '-o[output db name, required]:output:_files' \
  '-l[length of throw away sequences]:length' \
  '-c[clustering threshold (sequence identity)]:threshold' \
  '-ce[clustering threshold (blast expect)]:evalue' \
  '-G[use global identity (1/0)]:flag:(0 1)' \
  '-aL[alignment coverage for the longer sequence]:coverage' \
  '-aS[alignment coverage for the shorter sequence]:coverage' \
  '-g[cluster into most similar (1) vs first (0)]:flag:(0 1)' \
  '-circle[treat sequences as circular (1/0)]:flag:(0 1)' \
  '-sl[length of very long sequences to be skipped]:length' \
  '-prog[blast program]:prog:(blastp blastn megablast psiblast)' \
  '-s[blast search parameters]:params' \
  '-bs[pipe blast results into parser (1/0)]:flag:(0 1)' \
  '-exec[execution mode]:mode:(qsub local)' \
  '-host[number of qsub jobs]:num' \
  '-para[number of parallel blast jobs per qsub job]:num' \
  '-blp[number of threads per blast job]:num' \
  '-bat[number of sequences a blast job processes]:num' \
  '-shf[filename for local settings added to job shell script]:file:_files' \
  '-rs[steps of save restart file and clustering output]:steps' \
  '-restart[restart file to read in]:file:_files' \
  '-rf[steps of re-format blast database]:steps' \
  '-J[job file for specific jobs (internal use)]:jobfile:_files' \
  '-k[keep blast raw output file (1/0)]:flag:(0 1)' \
  '-P[path to blast executables]:path:_files -/' \
  '*:file:_files' && ret=0

return ret
