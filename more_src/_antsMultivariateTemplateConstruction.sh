#compdef antsMultivariateTemplateConstruction.sh
# Documentation: https://github.com/ANTsX/ANTs/blob/master/Scripts/antsMultivariateTemplateConstruction.sh
# ANTs multivariate template construction (v1) from a population of images

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '-A[template sharpening (0 none, 1 Laplacian, 2 unsharp)]:mode:(0 1 2)' \
  '-a[image summary statistic (0 mean, 1 norm mean, 2 median)]:stat:(0 1 2)' \
  '-b[save full iteration output to directories]:flag:(0 1)' \
  '-c[parallel computation control]:mode:(0 1 2 3 4 5)' \
  '-d[image dimensionality (2, 3, or 4)]:dim:(2 3 4)' \
  '-g[gradient step size for template refinement]:step:' \
  '-i[iteration limit for template construction]:iters:' \
  '-j[number of CPU cores]:cores:' \
  '-k[number of modalities]:n:' \
  '-m[maximum iterations in each registration]:iters:' \
  '-n[apply N4 bias field correction]:flag:(0 1)' \
  '-o[output prefix]:prefix:' \
  '-p[commands to prepend to job scripts]:cmds:' \
  '-s[similarity metric]:metric:(CC MI MSQ PR)' \
  '-r[rigid-body registration before main]:flag:(0 1)' \
  '-t[transformation model]:model:(GR GR_Constrained EL EX DD SY LDDMM S2)' \
  '-x[XGrid-specific arguments]:args:' \
  '-y[update with full affine transform]:flag:(0 1)' \
  '-z[registration target volume]:image:_files' \
  '-w[modality weights for similarity metric]:weights:' \
  '*:arg:_files' && ret=0

return ret
