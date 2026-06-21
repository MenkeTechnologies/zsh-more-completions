#compdef e2spt_extract.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/programs/e2spt_extract.py
# EMAN2: extract boxed particles from tomograms for subtomogram averaging

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--boxsz_unbin=[box size in unbinned tomogram]:size:' \
  '--label=[only extract particles with this name]:label:' \
  '--newlabel=[label of output particles]:label:' \
  '--threads=[threads]:n:' \
  '--maxtilt=[max tilt]:deg:' \
  '--padtwod=[padding factor]:f:' \
  '--noctf[skip ctf correction]' \
  '--wiener[wiener filter particles using ctf]' \
  '--nomasksubtlt[extracted subtilts should be unmasked]' \
  '--alltomograms[use all tomograms]' \
  '--shrink=[shrinking factor for output particles]:f:' \
  '--tltkeep=[keep a fraction of tilt images]:f:' \
  '--rmbeadthr=[remove 2d particles with high contrast object]:sigma:' \
  '--curves=[curve id to extract particles from saved curves]:id:' \
  '--curves_overlap=[fraction of overlap along curves]:f:' \
  '--jsonali=[re-extract using a particle_param json file]:file:_files' \
  '--mindist=[minimum distance between particles in A]:dist:' \
  '--keep=[fraction of particles to keep from previous alignment]:f:' \
  '--postproc=[processor after 3d particle reconstruction]:proc:' \
  '--postmask=[masking after 3d particle reconstruction]:mask:' \
  '--compressbits=[bits to keep for compression]:n:' \
  '--norewrite[skip existing files]' \
  '--append[append to existing files]' \
  '--parallel=[parallel]:spec:' \
  '--postxf=[file listing post transforms or symmetry]:file:_files' \
  '--ppid=[set PID of parent process]:pid:' \
  '--skip3d[do not make 3d particles]' \
  '--loadali2d=[extract polished particles using existing subtilt alignment]:file:_files' \
  '--apixout=[force output apix]:apix:' \
  '(-v --verbose)'{-v,--verbose}'=[verbose level 0-9]:level:' \
  '*:tomogram:_files' && ret=0

return ret
