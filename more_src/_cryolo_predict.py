#compdef cryolo_predict.py
# Documentation: https://cryolo.readthedocs.io/en/stable/tutorials/tutorial_overview.html
# cryolo_predict.py - crYOLO deep-learning particle picking (prediction)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-c --conf)'{-c,--conf}'[crYOLO config JSON file]:file:_files' \
  '(-w --weights)'{-w,--weights}'[trained model weights (.h5)]:file:_files' \
  '(-i --input)'{-i,--input}'[folder of images/tomograms to pick]:dir:_files -/' \
  '(-o --output)'{-o,--output}'[output folder for box files]:dir:_files -/' \
  '(-t --threshold)'{-t,--threshold}'[confidence threshold for picking]:val' \
  '(-g --gpu)'{-g,--gpu}'[GPU id(s) to use]:gpus' \
  '--num_cpu[number of CPU processes]:n' \
  '--gpu_fraction[fraction of GPU memory to use (0-1)]:frac' \
  '--otf[filter images on the fly, do not save to disk]' \
  '--min_distance[remove particles closer than this (pixels)]:dist' \
  '--filament_mode[enable filament picking mode]' \
  '--filament_width[filament width in pixels]:w' \
  '--min_box_per_filament[minimum boxes per filament]:n' \
  '--box_distance[distance between filament boxes (pixels)]:dist' \
  '--nosplit[do not split curved filaments]' \
  '--nomerging[do not merge filaments]' \
  '*:file:_files' && ret=0

return ret
