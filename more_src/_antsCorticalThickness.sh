#compdef antsCorticalThickness.sh
# Documentation: https://github.com/ANTsX/ANTs/blob/master/Scripts/antsCorticalThickness.sh
# ANTs cortical thickness pipeline (extraction, registration, segmentation, DiReCT)

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '*-a[anatomical T1 image]:image:_files' \
  '-b[Atropos posterior formulation]:formulation:' \
  '*-c[additional priors for thickness]:priors:_files' \
  '-d[image dimension (2 or 3)]:dim:(2 3)' \
  '-e[brain segmentation template]:template:_files' \
  '-f[extraction registration mask]:mask:_files' \
  '-g[denoise anatomical images]:flag:(0 1)' \
  '-i[maximum registration iterations]:iters:' \
  '-j[use floating-point precision]:flag:(0 1)' \
  '-k[keep temporary files]:flag:(0 1)' \
  '-l[label propagation with distance prior]:spec:' \
  '-m[brain extraction probability mask]:mask:_files' \
  '-n[number of segmentation iterations]:n:' \
  '-o[output prefix]:prefix:' \
  '-p[brain segmentation priors]:priors:' \
  '-q[use quick registration]:flag:(0 1)' \
  '-r[cortical thickness prior image]:image:_files' \
  '-s[image file suffix]:suffix:(nii.gz nii nrrd mha)' \
  '-t[template for T1 registration]:template:_files' \
  '-u[use random seeding]:flag:(0 1)' \
  '-v[use B-spline smoothing]:flag:(0 1)' \
  '-w[Atropos prior segmentation weight]:weight:' \
  '-x[Atropos internal iterations]:iters:' \
  '-y[script stage to run]:stage:' \
  '-z[test/debug mode]:flag:(0 1)' \
  '*:arg:_files' && ret=0

return ret
