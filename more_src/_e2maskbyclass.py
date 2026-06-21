#compdef e2maskbyclass.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/programs/e2maskbyclass.py
# EMAN2: interactively mask particles based on class-averages

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--classes=[path to a class-average file]:file:_files' \
  '--threads=[number of alignment threads]:n:' \
  '--nofullresok[override requirement of _fullres particle images]' \
  '--redobispec[recompute bispectra from masked particles]' \
  '--redoharmonic[recompute harmonic power from masked particles]' \
  '--gui[permit interactive adjustment of mask parameters]' \
  '(-v --verbose)'{-v,--verbose}'=[verbose level 0-9]:level:' \
  '--ppid=[set PID of parent process]:pid:' \
  '*:file:_files' && ret=0

return ret
