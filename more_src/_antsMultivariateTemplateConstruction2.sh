#compdef antsMultivariateTemplateConstruction2.sh
# Documentation: https://github.com/ANTsX/ANTs/blob/master/Scripts/antsMultivariateTemplateConstruction2.sh
# ANTs optimal multivariate template construction (v2) from a population of images

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '-A[template sharpening (0 none, 1 Laplacian, 2 unsharp)]:mode:(0 1 2)' \
  '-a[image summary statistic (0 mean, 1 norm mean, 2 median)]:stat:(0 1 2)' \
  '-b[backup images and results from all iterations]:flag:(0 1)' \
  '-c[parallel computation control]:mode:(0 1 2 3 4 5)' \
  '-d[image dimensionality (2, 3, or 4)]:dim:(2 3 4)' \
  '-e[use single precision]:flag:(0 1)' \
  '-f[shrink factors in pairwise registration]:factors:' \
  '-g[gradient step size for template updates]:step:' \
  '-i[iteration limit for template construction]:iters:' \
  '-j[number of CPU cores]:cores:' \
  '-k[number of modalities]:n:' \
  '-l[use linear registration stages]:flag:(0 1)' \
  '-m[similarity metric]:metric:(CC MI MSQ DEMONS)' \
  '-n[apply N4 bias field correction]:flag:(0 1)' \
  '-o[output prefix]:prefix:' \
  '-p[commands to prepend to job scripts]:cmds:' \
  '-q[max iterations per pairwise registration]:iters:' \
  '-r[rigid-body registration before main]:flag:(0 1)' \
  '-s[smoothing kernels in pairwise registration]:kernels:' \
  '-t[transformation model]:model:(SyN BSplineSyN Affine Rigid)' \
  '-u[walltime for PBS/SLURM]:walltime:' \
  '-v[memory limit for PBS/SLURM]:memory:' \
  '-w[modality weights in similarity metric]:weights:' \
  '-x[XGrid arguments]:args:' \
  '-y[update with full affine transform]:flag:(0 1)' \
  '-z[initial target volume for all inputs]:image:_files' \
  '*:arg:_files' && ret=0

return ret
