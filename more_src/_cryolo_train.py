#compdef cryolo_train.py
# Documentation: https://cryolo.readthedocs.io/en/stable/tutorials/tutorial_overview.html
# cryolo_train.py - crYOLO deep-learning particle picking (training)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-c --conf)'{-c,--conf}'[crYOLO config JSON file]:file:_files' \
  '(-w --warmup)'{-w,--warmup}'[number of warmup epochs]:n' \
  '(-g --gpu)'{-g,--gpu}'[GPU id(s) to use]:gpus' \
  '(-nc --num_cpu)'{-nc,--num_cpu}'[number of CPU processes]:n' \
  '(-e --early)'{-e,--early}'[early-stopping patience]:n' \
  '--gpu_fraction[fraction of GPU memory to use (0-1)]:frac' \
  '--fine_tune[enable fine-tuning of an existing model]' \
  '(-lft --layers_fine_tune)'{-lft,--layers_fine_tune}'[number of layers to fine-tune]:n' \
  '--seed[random seed]:seed' \
  '--cleanup[clean up temporary files after training]' \
  '--use_multithreading[enable multithreaded data loading]' \
  '*:file:_files' && ret=0

return ret
