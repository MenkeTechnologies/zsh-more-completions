#compdef e2proc3d.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2proc3d.html
# Generic 3-D image processing and file format conversion program

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--add=[add a constant to the densities]:f' \
  '--addfile=[add another volume of identical size]:file:_files' \
  '--align=[align input map to --alignref]:aligner' \
  '--alignctod=[rotate C-aligned map for D symmetry]:sym' \
  '--alignref=[alignment reference volume]:file:_files' \
  '--apix=[A/pixel for scaling, sets/resets apix]:apix' \
  '--append[append output image, do not write inplace]' \
  '--average[average of a stack of 3D volumes]' \
  '--avg_byxf[transform each volume by header xform before averaging]' \
  '--averager=[averager for --average and --sym]:averager' \
  '--calcfsc=[calculate FSC curve between two models]:file:_files' \
  '--calcsf=[calculate radial structure factor]:file:_files' \
  '--calcradial=[calculate radial density by shell]:n' \
  '--clip=[output size by padding/clipping]:size' \
  '--compressbits=[HDF only, bits to keep for compression]:n' \
  '--nooutliers[with compressbits, truncate outlier values]' \
  '--diffmap=[match power spectrum then subtract]:file:_files' \
  '--fftclip=[output size, rescaling by padding FFT]:size' \
  '--filtertable=[apply 2-column S,amp file as Fourier filter]:file:_files' \
  '--first=[first image in input to process]:n' \
  '--fouriershrink=[reduce size by clipping in Fourier space]:n' \
  '--fragmentize=[remove random chunks, produce N derived maps]:n' \
  '--icos2to5[rotate icosahedral map 2-fold to 5-fold on Z]' \
  '--icos5fhalfmap[input is icos 5f top half map]' \
  '--icos5to2[rotate icosahedral map 5-fold to 2-fold on Z]' \
  '--inputto1[set all input voxels to 1 after reading]' \
  '--last=[last image in input to process]:n' \
  '--matchto=[match filtration to this volume]:file:_files' \
  '--medianshrink=[downsample by local median]:n' \
  '--meanshrink=[downsample by local average]:n' \
  '--meanshrinkbig=[downsample without reading entire volume into RAM]:n' \
  '--mrc16bit[output as 16 bit MRC file (deprecated)]' \
  '--mrc8bit[output as 8 bit MRC file (deprecated)]' \
  '--mult=[scale densities by a fixed number]:n' \
  '--multfile=[multiply by another volume of identical size]:file:_files' \
  '--origin=[set coordinates for pixel (0,0,0)]:xyz' \
  '--outmode=[alternate output format]:mode' \
  '--outnorescale[do not rescale when writing as integers]' \
  '--outtype=[set output image format]:type' \
  '--ppid=[set parent process PID]:pid' \
  '*--process=[apply named processor with parameters]:processor' \
  '--resetxf[reset transform matrix to identity]' \
  '--ralignzphi=[refine Z alignment +-10 px and phi +-15 deg]:file:_files' \
  '--rot=[rotate map, az,alt,phi or convention]:params' \
  '--scale=[rescale data by n]:n' \
  '--setsf=[set radial structure factor]:file:_files' \
  '--setisosf=[make amplitude rotationally symmetric]:file:_files' \
  '--step=[process subset, init,step]:params' \
  '--swap[swap the byte order]' \
  '--sym=[symmetry to impose]:sym' \
  '--tomoprep[produce HDF for interactive tomography annotation]' \
  '--tophalf[output keeps only top half map]' \
  '--trans=[translate map by dx,dy,dz]:xyz' \
  '--unstacking[output 3D stack as numbered single files]' \
  '--fouriermult=[multiply given file in Fourier space]:file:_files' \
  '--applyxf=[apply xform.align3d from another map]:file:_files' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '*:volume file:_files' && ret=0

return ret
