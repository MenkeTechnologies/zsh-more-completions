#compdef e2proc2d.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2proc2d.html
# Generic 2-D image processing and file format conversion program

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--apix=[A/pixel for scaling]:apix' \
  '--average[average all input images without alignment]' \
  '--avgseq=[average sets of N sequential frames]:n' \
  '--averager=[averager type for --average]:averager' \
  '--calcsf=[calculate radial structure factor]:file:_files' \
  '--calccont[compute low resolution azimuthal contrast]' \
  '--clip=[output size in pixels]:size' \
  '--exclude=[exclude image numbers in file]:file:_files' \
  '--fftavg=[incoherent Fourier average of all images]:file:_files' \
  '*--process=[apply named processor with parameters]:processor' \
  '--mult=[multiply image by constant]:n' \
  '--add=[add constant to densities]:n' \
  '--addfile=[add another volume of identical size]:file:_files' \
  '--first=[first image in input to process]:n' \
  '--last=[last image in input to process]:n' \
  '--list=[work only on image numbers in LIST file]:file:_files' \
  '--select=[work only on images in named selection set]:set' \
  '--randomn=[select random subset of N particles]:n' \
  '--inplace[output overwrites input]' \
  '--interlv=[2nd input file for interleaving]:file:_files' \
  '--extractboxes[extract box locations from image header]' \
  '--meanshrink=[reduce image size by average]:n' \
  '--medianshrink=[reduce image size using median filter]:n' \
  '--fouriershrink=[reduce image size by clipping in Fourier space]:n' \
  '--compressbits=[HDF only, bits to keep for compression]:n' \
  '--outmode=[alternate output format]:mode' \
  '--outnorescale[prevent rescaling when writing as integers]' \
  '--mrc16bit[output as 16-bit MRC file (deprecated)]' \
  '--mrc8bit[output as 8-bit MRC file (deprecated)]' \
  '--fixintscaling=[set scaling behavior for integer formats]:val' \
  '--multfile=[multiply volume by another volume]:file:_files' \
  '--norefs[skip images marked as references]' \
  '--outtype=[output image format]:type' \
  '--radon[perform Radon transform]' \
  '--randomize=[randomly rotate/translate image]:params' \
  '--rotavg[compute 1-D rotational average]' \
  '--rotate=[rotate clockwise in degrees]:deg' \
  '--fp=[generate rotational/translational footprints]:n' \
  '--scale=[scale by specified factor]:n' \
  '--anisotropic=[anisotropic scaling along axis]:params' \
  '--selfcl=[output 180x180 self-common lines map]:params' \
  '--setsfpairs[apply radial structure factor between image pairs]' \
  '--split=[split input file into n output files]:n' \
  '--translate=[translate by x,y pixels]:xy' \
  '--headertransform=[apply xform.align2d header transform]:val' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '--plane=[change plane of image processing]:plane' \
  '--writejunk[write image even if sigma is 0]' \
  '--swap[swap byte order]' \
  '--threed2threed[process 3D as 2D slices, output as 3D]' \
  '--threed2twod[process 3D as 2D slices, output as 2D stack]' \
  '--twod2threed[process 2D stack, output as 3D]' \
  '--unstacking[output as series of numbered single files]' \
  '--ppid=[set parent process PID]:pid' \
  '--step=[process subset of input data]:params' \
  '--eer2x[render EER file on 8k grid]' \
  '--eer4x[render EER file on 16k grid]' \
  '(-P --parallel)'{-P,--parallel}'=[run in parallel]:spec' \
  '*:image file:_files' && ret=0

return ret
