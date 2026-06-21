#compdef e2ddd_movie.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/programs/e2ddd_movie.py
# EMAN2: align and average direct detector device (DDD) movie frames

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--tiltseries_name=[name for the tilt series generated from input movies]:name:' \
  '--tomo[process input movies as tilts from a tomogram]' \
  '--dark=[perform dark image correction using this image file]:file:_files' \
  '--gain=[perform gain image correction using this image file]:file:_files' \
  '--ref_label=[label for averaged dark and gain references]:label:' \
  '--rotate_dark=[rotate dark reference by 0 90 180 or 270]:deg:(0 90 180 270)' \
  '--reverse_dark[flip dark reference along y axis]' \
  '--k2[gain correction on gain images from a Gatan K2]' \
  '--de64[gain correction on DE64 data]' \
  '--rotate_gain=[rotate gain reference by 0 90 180 or 270]:deg:(0 90 180 270)' \
  '--reverse_gain[flip gain reference along y axis]' \
  '--gain_darkcorrected[do not dark correct gain image]' \
  '--invert_gain[use reciprocal of input gain image]' \
  '--bad_columns=[comma separated list of camera defect columns]:cols:' \
  '--bad_rows=[comma separated list of camera defect rows]:rows:' \
  '--align_frames[perform whole-frame alignment of the input stacks]' \
  '--realign[align frames using previous alignment parameters]' \
  '--round=[apply subpixel or integer frame shifts]:round:' \
  '--noali[average of non-aligned frames]' \
  '--allali[average of all aligned frames]' \
  '--rangeali=[average frames n1-n2]:range:' \
  '--goodali[average of good aligned frames]' \
  '--bestali[average of best aligned frames]' \
  '--groupby=[combine every N frames using a moving window]:n:' \
  '--optbox=[box size during alignment optimization]:size:' \
  '--optstep=[step size during alignment optimization]:size:' \
  '--optalpha=[penalization to apply during robust regression]:f:' \
  '--optccf=[approach to determine relative frame translations]:method:' \
  '--step=[first,step,last subset of input data]:spec:' \
  '--frames[write corrected stack of frames]' \
  '--ext=[save frames with this extension]:ext:' \
  '--threads=[number of threads to run in parallel]:n:' \
  '--verbose=[verbose level 0-9]:level:' \
  '--debug[run with debugging output]' \
  '--ppid=[set PID of parent process]:pid:' \
  '--fixbadpixels[identify bad pixels in dark/gain reference]' \
  '--suffix=[unique suffix for output frames]:suffix:' \
  '--phaseplate[use when aligning phase plate frames]' \
  '*:movie:_files' && ret=0

return ret
