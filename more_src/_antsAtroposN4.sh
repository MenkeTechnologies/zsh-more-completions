#compdef antsAtroposN4.sh
# Documentation: https://github.com/ANTsX/ANTs/blob/master/Scripts/antsAtroposN4.sh
# ANTs iterative N4 bias correction and Atropos segmentation wrapper

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '*-a[input anatomical image (typically T1)]:image:_files' \
  '-b[posterior formulation]:formulation:' \
  '-c[number of segmentation classes]:classes:' \
  '-d[image dimension (2 or 3)]:dim:(2 3)' \
  '-e[N4 convergence parameters]:params:' \
  '-f[N4 shrink factor]:factor:' \
  '-g[denoise anatomical images]:flag:(0 1)' \
  '-i[Atropos ICM parameters]:params:' \
  '-j[Atropos use-euclidean-distance]:flag:(0 1)' \
  '-k[keep temporary files]:flag:(0 1)' \
  '-l[label propagation for distance priors]:spec:' \
  '-m[maximum N4 <-> Atropos iterations]:iters:' \
  '-n[maximum Atropos iterations]:iters:' \
  '-o[output prefix]:prefix:' \
  '*-p[segmentation prior probability images]:priors:' \
  '-q[N4 B-spline parameters]:params:' \
  '-r[MRF prior specification]:spec:' \
  '-s[output image file suffix]:suffix:(nii.gz nii nrrd mha)' \
  '-u[use random seeding in Atropos]:flag:(0 1)' \
  '-w[Atropos prior segmentation weight]:weight:' \
  '-x[binary mask image]:mask:_files' \
  '-y[posterior label for N4 weight mask]:label:' \
  '-z[test/debug mode]:flag:(0 1)' \
  '*:arg:_files' && ret=0

return ret
