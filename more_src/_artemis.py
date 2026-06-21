#compdef artemis.py
# Documentation: http://wiki.opentelemac.org/doku.php?id=python:runcode_in_parallel
# TELEMAC-MASCARET launcher (shares the runcode.py option parser)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-c --configname)'{-c,--configname}'=[configuration name]:config:' \
  '(-f --configfile)'{-f,--configfile}'=[configuration file]:file:_files' \
  '(-r --rootdir)'{-r,--rootdir}'=[root directory of the source code]:dir:_files -/' \
  '(-s --sortiefile)'{-s,--sortiefile}'[write run output to a sortie file]' \
  '(-t --tmpdirectory)'{-t,--tmpdirectory}'[do not remove the temporary directory]' \
  '(-w --workdirectory)'{-w,--workdirectory}'=[re-run within a defined subdirectory]:dir:_files -/' \
  '(-x --compileonly)'{-x,--compileonly}'[create the executable without running]' \
  '--nozip[do not zip extra sortie files in parallel mode]' \
  '--jobname=[job name for the HPC queue]:name:' \
  '--queue=[HPC queue]:queue:' \
  '--walltime=[HPC walltime]:walltime:' \
  '--email=[email address for HPC completion notice]:email:' \
  '--hosts=[available hosts for parallel mode (semicolon-delimited)]:hosts:' \
  '--ncsize=[number of processors forced in parallel mode]:n:' \
  '--nctile=[number of cores per node]:n:' \
  '--ncnode=[number of nodes]:n:' \
  '--sequential[launch multiple CAS files sequentially]' \
  '--mpi[run the MPI command, ignoring the HPC command]' \
  '--split[only perform the trace and split operations]' \
  '--merge[only perform the output recollection (gretel)]' \
  '--run[only execute the simulation]' \
  '--use-link[use symlinks instead of copying (Unix only)]' \
  '*:steering CAS file:_files' && ret=0

return ret
