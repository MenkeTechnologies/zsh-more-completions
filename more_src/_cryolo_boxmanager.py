#compdef cryolo_boxmanager.py
# Documentation: https://cryolo.readthedocs.io/en/stable/tutorials/tutorial_overview.html
# cryolo_boxmanager.py - crYOLO box manager for visualizing/creating training data

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-i --image_dir)'{-i,--image_dir}'[folder of images to display]:dir:_files -/' \
  '(-b --box_dir)'{-b,--box_dir}'[folder of box files to display]:dir:_files -/' \
  '*:file:_files' && ret=0

return ret
