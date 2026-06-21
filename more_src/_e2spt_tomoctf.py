#compdef e2spt_tomoctf.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/programs/e2spt_tomoctf.py
# EMAN2: apply CTF correction to tomographic tilt series

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--alltiltseries[use all tilt series in the folder]' \
  '--dfrange=[search range of defocus start,end,step]:range:' \
  '--psrange=[phase shift range start,end,step]:range:' \
  '--tilesize=[size of tile to calculate FFT]:size:' \
  '--voltage=[voltage of microscope in kV]:kv:' \
  '--cs=[Cs of microscope]:cs:' \
  '--nref=[use N tilt images near center to estimate defocus range]:n:' \
  '--stepx=[number of tiles on x-axis]:n:' \
  '--stepy=[number of tiles on y-axis]:n:' \
  '--checkhand[check the handedness of tomogram]' \
  '--threads=[number of threads to run in parallel]:n:' \
  '--nolog[turn off recording of the command]' \
  '(-v --verbose)'{-v,--verbose}'=[verbose level 0-9]:level:' \
  '--writetmp[write temporary files]' \
  '--bgcurve=[load curve of background power spectrum]:file:_files' \
  '--ppid=[set PID of parent process]:pid:' \
  '--minres=[CTF zero to start the algo from]:n:' \
  '--skipexist[skip existing tomograms]' \
  '*:tiltseries:_files' && ret=0

return ret
