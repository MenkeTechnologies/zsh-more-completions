#compdef antsRegistrationSyN.sh
# Documentation: https://github.com/ANTsX/ANTs/blob/master/Scripts/antsRegistrationSyN.sh
# ANTs registration wrapper for the SyN deformable transformation pipeline

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '-d[image dimensionality (2 or 3)]:dim:(2 3)' \
  '-f[fixed/reference image]:fixed image:_files' \
  '-m[moving/target image]:moving image:_files' \
  '-o[output prefix]:prefix:' \
  '-n[number of threads]:threads:' \
  '-i[initial forward transform]:transform:_files' \
  '-t[transform type]:type:(t r a s sr b br)' \
  '-r[radius for cross-correlation metric]:radius:' \
  '-s[spline distance for B-spline SyN]:distance:' \
  '-g[gradient step size]:step:' \
  '-x[mask(s) for fixed/moving space]:mask:_files' \
  '-p[precision type]:precision:(f d)' \
  '-j[use histogram matching]:flag:(0 1)' \
  '-y[reproducibility mode]:flag:(0 1)' \
  '-z[collapse output transforms]:flag:(0 1)' \
  '-e[fix random seed]:seed:' \
  '*:arg:_files' && ret=0

return ret
