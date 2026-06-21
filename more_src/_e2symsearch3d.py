#compdef e2symsearch3d.py
# Documentation: https://github.com/cryoem/eman2/blob/master/programs/e2symsearch3d.py
# EMAN2 search for the best symmetry axis orientation of a 3D volume

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--align=[aligner (symalignquat)]:aligner' \
  '--average[save average of aligned/symmetrized stack]' \
  '--averager=[averager for class average production]:averager' \
  '--clip=[boxsize to clip particles for speedup]:n' \
  '--cmp=[comparator for symmetrized vs unsymmetrized]:cmp' \
  '--highpass=[highpass processor before coarse alignment]:proc' \
  '--input=[input volume or HDF stack of volumes]:file:_files' \
  '--keep=[fraction of particles to include]:frac' \
  '--keepsig[interpret keep in standard deviations]' \
  '--lowpass=[lowpass processor before coarse alignment]:proc' \
  '--mask=[mask processor applied before alignment]:proc' \
  '--maskfile=[3D mask image file in HDF format]:file:_files' \
  '--mirror=[axis for mirrored reference copy]:axis' \
  '--nolog[do not log command in .eman2log.txt]' \
  '--nopath[save results in current directory]' \
  '--nopreprocprefft[disable one-time preprocessing]' \
  '--normproc=[normalization processor before alignment]:proc' \
  '--parallel=[parallel processing configuration]:spec' \
  '--path=[output directory name]:dir:_files -/' \
  '--plots[generate plot of correlation scores]' \
  '--ppid=[parent process id]:pid' \
  '--preavgproc1=[processor after alignment before averaging]:proc' \
  '--preavgproc2=[secondary processor before averaging]:proc' \
  '--preprocess=[processor before coarse alignment]:proc' \
  '--ref=[reference volume for particle discrimination]:file:_files' \
  '--saveali[save aligned/symmetrized particle stack]' \
  '--savepreproc[save preprocessed particle stacks]' \
  '--savesteps[save intermediate averages and stacks]' \
  '--shrink=[shrink particles before similarity computation]:n' \
  '--subset=[number of particles from stack to process]:n' \
  '--sym=[symmetry specification]:sym' \
  '--threshold=[threshold applied after normalization]:proc' \
  '--tweak[final alignment without downsampling]' \
  '--verbose=[verbosity level]:n' \
  '--weighbytiltaxis=[weight particles by tilt axis distance]:val' \
  '--weighbyscore[weight contribution by score ratio]' \
  '--avgiter=[iterations for discrimination and re-averaging]:n' \
  '--notmatchimgs[prevent spectral profile matching]' \
  '--steps=[number of Monte Carlo search steps]:n' \
  '--symmetrize[apply symmetry to volume after alignment]' \
  '*:volume:_files' && ret=0

return ret
