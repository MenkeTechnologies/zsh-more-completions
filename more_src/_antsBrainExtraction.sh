#compdef antsBrainExtraction.sh
# Documentation: https://github.com/ANTsX/ANTs/blob/master/Scripts/antsBrainExtraction.sh
# ANTs template-based brain extraction (skull stripping) pipeline

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '*-a[anatomical image (typically T1)]:image:_files' \
  '-c[tissue classification k-means parameters]:params:' \
  '-d[image dimension (2 or 3)]:dim:(2 3)' \
  '-e[brain extraction template]:template:_files' \
  '-f[brain extraction registration mask]:mask:_files' \
  '-k[keep temporary files]:flag:(0 1)' \
  '-m[brain extraction probability mask]:mask:_files' \
  '-o[output prefix]:prefix:' \
  '-q[use single floating point precision]:flag:(0 1)' \
  '-r[initial moving transform (ITK affine)]:transform:_files' \
  '-R[rotation search parameters for antsAI]:params:' \
  '-s[image file suffix]:suffix:(nii.gz nii nrrd mha)' \
  '-T[translation search parameters for antsAI]:params:' \
  '-u[use random seeding]:flag:(0 1)' \
  '-z[test/debug mode]:flag:(0 1)' \
  '*:arg:_files' && ret=0

return ret
