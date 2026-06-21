#compdef e2spt_classaverage.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2spt_classaverage.html
# Produces iterative class-averages for stacks of 3-D volumes

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--input=[name of input volume stack in HDF format]:file:_files' \
  '--ref=[reference image for initial alignment]:file:_files' \
  '--apix=[pixel size to use instead of header value]:apix' \
  '--align=[aligner for particles to class average]:aligner' \
  '--aligncmp=[comparator for alignment]:cmp' \
  '--clip=[boxsize to clip particles during preprocessing]:size' \
  '--iter=[number of iterations to perform (default 1)]:n' \
  '--path=[directory for results (default spt)]:dir:_files -/' \
  '--npeakstorefine=[number of best coarse alignments to refine]:n' \
  '--preavgproc1=[processor after alignment before averaging]:proc' \
  '--preavgproc2=[processor after alignment before averaging]:proc' \
  '--parallel=[parallelism spec (default thread:1)]:spec' \
  '--ppid=[set parent process PID]:pid' \
  '--resume=[JSON file with incomplete alignment to resume]:file:_files' \
  '--plots[generate PNG plots of CCC scores]' \
  '--savepreproc[save stacks of preprocessed particles]' \
  '--subset=[refine only this subset of particles]:n' \
  '--savesteps[save average after each iteration]' \
  '--saveali[save aligned particle volumes in class_ptcl.hdf]' \
  '--saveallalign[save aligned stack for each iteration]' \
  '--saveallpeaks[save alignment info for all examined peaks]' \
  '--sym=[symmetry to impose (c,d,h,tet,oct,icos)]:sym' \
  '--verbose=[verbosity level 0-9]:level' \
  '--weighbytiltaxis=[weight particles by distance from tilt axis]:val' \
  '--weighbyscore[weight contribution by score/bestscore ratio]' \
  '--goldstandardoff[prevent dataset splitting]' \
  '--classmx=[classification matrix file specifying grouping]:file:_files' \
  '--recompute[recompute averages based on classmx]' \
  '--donotaverage[yield alignment results only]' \
  '--refpreprocess[preprocess reference identically to particles]' \
  '--refrandphase=[resolution to phase randomize reference to]:res' \
  '--resultmx=[output image to store result matrix]:file:_files' \
  '--keep=[fraction of particles to keep per class]:frac' \
  '--keepsig[interpret keep parameter in standard deviations]' \
  '--averager=[averager type (default mean.tomo)]:averager' \
  '--shrink=[shrink volumes for coarse alignment]:n' \
  '--shrinkfine=[shrink volumes for fine alignment]:n' \
  '--threshold=[threshold applied after normalization]:proc' \
  '--mask=[masking processor applied before alignment]:proc' \
  '--maskfile=[3D mask file in HDF format]:file:_files' \
  '--normproc=[normalization processor before alignment]:proc' \
  '--preprocess=[processor before coarse alignment]:proc' \
  '--preprocessfine=[processor before fine alignment]:proc' \
  '--lowpass=[lowpass filter for coarse alignment]:proc' \
  '--lowpassfine=[lowpass filter for fine alignment]:proc' \
  '--highpass=[highpass filter for coarse alignment]:proc' \
  '--highpassfine=[highpass filter for fine alignment]:proc' \
  '--matchimgs[apply spectral profile matching during preprocessing]' \
  '--filterbyfsc[use dynamic FSC filtering]' \
  '--radius=[hydrodynamic radius for angular step calc]:val' \
  '--precision=[precision in pixels for alignment params]:val' \
  '--search=[translational search range for coarse alignment]:n' \
  '--searchfine=[translational search range for fine alignment]:n' \
  '--postprocess=[processor applied to final averaged volume]:proc' \
  '--procfinelikecoarse[preprocess fine particles like coarse]' \
  '--falign=[second-stage aligner for fine-tuning]:aligner' \
  '--faligncmp=[comparator for fine alignment stage]:cmp' \
  '--translateonly[disable rotations, align translationally only]' \
  '--inputaliparams=[JSON file with pre-alignment transforms]:file:_files' \
  '--breaksym[skip symmetrization after averaging]' \
  '--randomizewedge[randomize particle positions before alignment]' \
  '--autocenter[autocenter averages (experimental)]' \
  '--tweak[final alignment without downsampling]' \
  '*:volume file:_files' && ret=0

return ret
