#compdef antsLongitudinalCorticalThickness.sh
# Documentation: https://github.com/ANTsX/ANTs/blob/master/Scripts/antsLongitudinalCorticalThickness.sh
# ANTs longitudinal cortical thickness pipeline with single-subject template

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '*-a[skull-stripped atlases for cooking priors]:atlas:_files' \
  '-b[keep temporary files]:flag:(0 1)' \
  '-c[parallel computation control]:mode:(0 1 2 3 4 5)' \
  '-d[image dimension (2 or 3)]:dim:(2 3)' \
  '-e[brain segmentation template]:template:_files' \
  '-f[brain extraction registration mask]:mask:_files' \
  '-g[denoise anatomical images]:flag:(0 1)' \
  '-j[number of CPU cores for pexec]:cores:' \
  '-k[number of modalities]:n:' \
  '*-l[labels associated with each atlas]:labels:_files' \
  '-m[brain extraction probability mask]:mask:_files' \
  '-n[use SST cortical thickness as prior]:flag:(0 1)' \
  '-o[output prefix]:prefix:' \
  '-p[brain segmentation priors]:priors:' \
  '-q[quick registration parameters]:level:(0 1 2 3)' \
  '-r[rigid alignment to single-subject template]:flag:(0 1)' \
  '-s[output image file suffix]:suffix:(nii.gz nii nrrd mha)' \
  '-t[template for T1 registration]:template:_files' \
  '-u[use single float precision]:flag:(0 1)' \
  '-v[Atropos segmentation weight for SST]:weight:' \
  '-w[Atropos segmentation weight for timepoints]:weight:' \
  '-x[number of iterations within Atropos]:iters:' \
  '-y[rigid template update component]:flag:(0 1)' \
  '-z[test/debug mode]:flag:(0 1)' \
  '*:arg:_files' && ret=0

return ret
