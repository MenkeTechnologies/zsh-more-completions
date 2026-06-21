#compdef e2ctf.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2ctf.html
# Various CTF-related operations on images, including automatic fitting

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--allparticles[process all particle stacks in particles subdirectory]' \
  '--onlynew[skip files with existing __ctf_flip outputs]' \
  '--onlynoinvar[skip files with existing __ctf_flip_invar outputs]' \
  '--sortdefocus[arrange micrographs by defocus value]' \
  '--minptcl=[skip files with fewer particles than this]:n' \
  '--minqual=[skip files below quality threshold]:n' \
  '--chunk=[process files in groups, chunksize,nchunk]:spec' \
  '--gui[launch interactive fitting interface]' \
  '--autofit[execute automated CTF fitting]' \
  '--wholeimage[show whole micrograph curve alongside particle curve]' \
  '--highdensity[alternative SSNR strategy for densely-packed particles]' \
  '--zerook[accept particles with zero edge values]' \
  '--astigmatism[include astigmatism in fitting]' \
  '--phaseplate[incorporate phase/amplitude contrast for phase plate data]' \
  '--curdefocushint[use existing project defocus as starting point]' \
  '--curdefocusfix[fix defocus at current value, recalc SSNR]' \
  '--useframedf[prefer frame-level defocus over particle-level]' \
  '--bgmask=[background mask radius]:n' \
  '--fixnegbg[correct background to prevent negative values]' \
  '--computesf[determine structure factor*envelope for image set]' \
  '--apix=[angstroms per pixel]:apix' \
  '--voltage=[microscope voltage in kV]:kv' \
  '--cs=[spherical aberration coefficient]:cs' \
  '--ac=[amplitude contrast percentage (default 10)]:pct' \
  '--defocusmin=[minimum autofit defocus value]:val' \
  '--defocusmax=[maximum autofit defocus value]:val' \
  '--constbfactor=[fixed B-factor, negative enables autofitting]:val' \
  '--autohp[automatic high-pass filter to remove initial peak]' \
  '--invert[reverse particle contrast in output]' \
  '--nonorm[disable per-image real-space normalization]' \
  '--nosmooth[disable background smoothing]' \
  '--refinebysnr[refine defocus using high-resolution SNR]' \
  '--phaseflip[apply phase flipping post-CTF determination]' \
  '--phasefliphp[phase flip with automatic high-pass (deprecated)]' \
  '--extrapad[add padding to tightly-boxed particles]' \
  '--phaseflipsmall[generate half-size particles (deprecated)]' \
  '--wiener[apply Wiener filtering to particles]' \
  '--snrfilt[apply SNR filter during phase flipping]' \
  '--proctag=[suffix for processed particle names]:tag' \
  '--phaseflipproc=[primary processing filter specification]:proc' \
  '--phaseflipproc2=[secondary processing filter specification]:proc' \
  '--phaseflipproc3=[tertiary processing filter specification]:proc' \
  '--phaseflipproc4=[quaternary processing filter specification]:proc' \
  '--phaseflipproc5=[quinary processing filter specification]:proc' \
  '--compressbits=[compression bit depth, 0=lossless (default 6)]:n' \
  '--storeparm[include CTF parameters in output files]' \
  '--oversamp=[oversampling multiplier]:n' \
  '--classify=[experimental subclassification into n groups]:n' \
  '--sf=[structure factor file (default auto)]:file:_files' \
  '--parallel=[parallelism spec (thread:n only)]:spec' \
  '--threads=[number of parallel threads]:n' \
  '--debug[enable debug mode]' \
  '--dbds=[legacy workflow option]:val' \
  '--source_image=[filter particles by source image header param]:val' \
  '--ppid=[set parent process PID]:pid' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '*:image file:_files' && ret=0

return ret
