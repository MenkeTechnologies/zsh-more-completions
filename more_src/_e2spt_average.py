#compdef e2spt_average.py
# Documentation: https://github.com/cryoem/eman2/blob/master/programs/e2spt_average.py
# EMAN2 single particle tomography subtomogram averaging from alignment results

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--threads=[number of alignment threads]:n' \
  '--iter=[iteration number within path]:n' \
  '--simthr=[highest similarity value to include]:val' \
  '--keep=[fraction of particles to keep; overrides simthr]:frac' \
  '--replace=[replace input subtomograms with specified file]:file:_files' \
  '--outfile=[write only overall output to this file]:file:_files' \
  '--wedgesigma=[missing data threshold in Fourier space (sigma)]:val' \
  '--minalt=[minimum alignment altitude to include]:deg' \
  '--maxalt=[maximum alignment altitude to include]:deg' \
  '--maxtilt=[zero data beyond specified tilt angle]:deg' \
  '--listfile=[file with integer particle numbers to include]:file:_files' \
  '--automaskexpand=[voxels to expand mask before soft edge]:n' \
  '--symalimasked=[realign each asymmetric unit to reference]:file:_files' \
  '--sym=[symmetry of the input]:sym' \
  '--path=[folder containing current results]:dir:_files -/' \
  '--skippostp[skip post process steps (fsc, mask, filters)]' \
  '--verbose=[verbose level]:n' \
  '--ppid=[parent process id]:pid' \
  '--parallel=[thread/mpi parallelism to use]:spec' \
  '*:particles:_files' && ret=0

return ret
