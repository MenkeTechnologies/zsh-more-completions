#compdef antsIntermodalityIntrasubject.sh
# Documentation: https://github.com/ANTsX/ANTs/blob/master/Scripts/antsIntermodalityIntrasubject.sh
# ANTs intra-subject inter-modality registration to a T1 anatomical image

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '*-a[auxiliary scalar image to warp to template]:image:_files' \
  '-b[auxiliary diffusion tensor image to warp]:image:_files' \
  '-d[image dimensionality (2 or 3)]:dim:(2 3)' \
  '-i[scalar image to match (e.g. average BOLD)]:image:_files' \
  '-l[labels in template space]:labels:_files' \
  '-o[output prefix]:prefix:' \
  '-r[anatomical T1 image to align to]:image:_files' \
  '-R[anatomical reference image for warping]:image:_files' \
  '-t[transform type]:type:(0 1 2 3)' \
  '-w[prefix of T1-to-template transformation]:prefix:' \
  '-x[anatomical T1 brain mask]:mask:_files' \
  '-T[template space]:template:_files' \
  '*:arg:_files' && ret=0

return ret
