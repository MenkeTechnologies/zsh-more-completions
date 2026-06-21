#compdef e2refinetorelion3d.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/programs/e2refinetorelion3d.py
# EMAN2: convert an EMAN2 refinement set to a RELION 3D refinement

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--randomizemodel=[randomize phases of initial model to this resolution]:ang:' \
  '--greyscale=[is the reference map in greyscale]:tf:' \
  '--symmgroup=[symmetry group]:group:' \
  '--symmnumber=[symmetry number]:n:' \
  '--ctfcorrect=[do CTF correction T/F]:tf:' \
  '--dataphaseflipped=[has the data been phase flipped T/F]:tf:' \
  '--ignoretofirstpeak=[ignore CTFs until the first peak T/F]:tf:' \
  '--lowpass=[initial low-pass filter for the reference map Ang]:ang:' \
  '--particle_mask_diameter=[diameter of soft spherical image mask in angstroms]:ang:' \
  '--solventmask=[location of the mask to be used]:file:_files' \
  '--healpix=[angular sampling interval degrees]:deg:' \
  '--auto_healpix=[local angular search value]:val:' \
  '--offsetrange=[offset search range pix]:pix:' \
  '--offsetstep=[offset search step pix]:pix:' \
  '--threads=[number of threads]:n:' \
  '--maxmemory=[maximum memory in GB per thread]:gb:' \
  '--amplitudecontrast=[amplitude contrast value]:val:' \
  '--intensitycorrection=[perform intensity-scale corrections T/F]:tf:' \
  '--print_symmetry[print all symmetry transformation matrices and exit]' \
  '--nearest_neighbor[nearest-neighbor instead of linear Fourier interpolation]' \
  '--pad=[padding factor]:f:' \
  '--limit_tilt=[limited tilt angle]:deg:' \
  '--verbose=[set level of verbosity]:level:' \
  '--onlyflipphase=[only flip phases T/F]:tf:' \
  '--ppid=[set PID of parent process]:pid:' \
  '*:arg:_files' && ret=0

return ret
