#compdef e2tomogram.py
# Documentation: https://github.com/cryoem/eman2/blob/master/programs/e2tomogram.py
# EMAN2 tilt series tomogram reconstruction with fiducial/patch tracking

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--alltiltseries[use all tilt series in folder]' \
  '--zeroid=[index of the center tilt]:n' \
  '--tltstep=[step between tilts; 0 reads header]:deg' \
  '--rawtlt=[text file containing raw tilt angles]:file:_files' \
  '--mdoc=[SerialEM .mdoc file or folder]:file:_files' \
  '--npk=[number of landmarks]:n' \
  '--tltax=[tilt axis angle]:deg' \
  '--tltkeep=[fraction of tilts to keep]:frac' \
  '--tltrange=[include tilts between START,STOP]:range' \
  '--outsize=[output tomogram size]:size:(1k 2k 4k)' \
  '--niter=[iterations for bin8,bin4,bin2,bin1]:iters' \
  '--bytile[generate final tomogram by tiles]' \
  '--load[load existing tilt parameters]' \
  '--loadfile=[load parameters from text file]:file:_files' \
  '--loadaretomo=[load from aretomo .aln file]:file:_files' \
  '--notmp[do not write temporary files]' \
  '--pkkeep=[fraction of landmarks to keep]:frac' \
  '--compressbits=[bits of precision in compressed output]:n' \
  '--clipz=[z thickness of final tomogram]:n' \
  '--bxsz=[box size for particle tracking]:n' \
  '--pk_maxval=[maximum landmark density (n sigma)]:n' \
  '--pk_mindist=[minimum distance between landmarks]:frac' \
  '--correctrot[correct global rotation and flatten sample]' \
  '--normslice[correct amplitude decay along z]' \
  '--filterto=[filter to absolute value]:val' \
  '--filterres=[filter final tomogram to resolution]:angstrom' \
  '--extrapad[use extra padding for tilted reconstruction]' \
  '--moretile[sample more tiles during reconstruction]' \
  '--rmbeadthr=[density threshold (sigma) for removing beads]:sigma' \
  '--threads=[number of threads]:n' \
  '--tmppath=[temporary path]:dir:_files -/' \
  '--verbose=[verbosity level]:n' \
  '--noali[skip initial alignment]' \
  '--dryrun[skip final reconstruction]' \
  '--patchtrack=[patch tracking iterations]:n:(0 1 2)' \
  '--posz[auto positioning along z axis]' \
  '--xdrift[extra correction for x-axis drift]' \
  '--ppid=[parent process id]:pid' \
  '--reconmode=[interpolation mode for reconstruction]:mode' \
  '--maxshift=[maximum shift relative to image size]:frac' \
  '--highpass=[highpass filter for alignment (pixels)]:n' \
  '--lowpass=[lowpass filter for alignment (absolute)]:val' \
  '--pathtracktile=[tiles per axis for patch tracking]:n' \
  '--flip[flip tomogram by rotating tilt axis]' \
  '--shiftz=[shift tomogram along z (pixels)]:n' \
  '--skipexist[skip existing tomograms]' \
  '--autoclipxy[optimize x-y shape to fit tilt images]' \
  '*:tilt series:_files' && ret=0

return ret
