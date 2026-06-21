#compdef antsLongitudinalJointLabelFusion.sh
# Documentation: https://github.com/ANTsX/ANTs/blob/master/Scripts/antsLongitudinalJointLabelFusion.sh
# ANTs longitudinal joint label fusion across timepoint directories

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '*-b[timepoint directory from longitudinal cortical thickness]:dir:_files -/' \
  '-c[parallel computation control]:mode:(0 1 2 3 4 5)' \
  '-d[image dimensionality (2 or 3)]:dim:(2 3)' \
  '-f[float precision (0 double, 1 float)]:flag:(0 1)' \
  '*-g[atlas image to warp to target]:atlas:_files' \
  '-j[number of CPU cores]:cores:' \
  '-k[keep warped atlas and label files]:flag:(0 1)' \
  '*-l[labels corresponding to atlas]:labels:_files' \
  '-m[use majority voting instead of JLF]:flag:(0 1)' \
  '-o[output prefix]:prefix:' \
  '-p[save posteriors format]:format:' \
  '-q[quick registration parameters]:flag:(0 1)' \
  '-r[qsub options]:options:' \
  '-t[target image for registration]:image:_files' \
  '-u[registration walltime for PBS/SLURM]:walltime:' \
  '-v[registration memory limit for PBS/SLURM]:memory:' \
  '-w[JLF walltime for PBS/SLURM]:walltime:' \
  '-x[target mask image]:mask:' \
  '-y[transform type]:type:(t r a s sr so b br bo)' \
  '-z[JLF memory limit for PBS/SLURM]:memory:' \
  '*:arg:_files' && ret=0

return ret
