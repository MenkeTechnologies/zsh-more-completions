#compdef e2tomoseg_convnet.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/programs/e2tomoseg_convnet.py
# EMAN2: convolutional neural network for tomogram segmentation

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--trainset=[training set]:file:_files' \
  '--from_trained=[train from an existing network]:file:_files' \
  '--nnet=[trained network input nnet_save_xx.hdf]:file:_files' \
  '--nettag=[tag of output neural net file]:tag:' \
  '--learnrate=[learning rate]:f:' \
  '--niter=[training iterations]:n:' \
  '--ncopy=[number of copies for each particle]:n:' \
  '--batch=[batch size for SGD]:n:' \
  '--nkernel=[number of kernels for each layer]:list:' \
  '--ksize=[width of kernels of each layer]:list:' \
  '--poolsz=[pooling size for each layer]:list:' \
  '--trainout[output the result of the training set]' \
  '--training[doing training]' \
  '--tomograms=[tomograms input]:file:_files' \
  '--applying[applying the neural network on tomograms]' \
  '--outtag=[tag of the segmentation output]:tag:' \
  '--threads=[number of threads to use when applying]:n:' \
  '--ppid=[set PID of parent process]:pid:' \
  '--device=[device to use cpu gpu or gpuX]:device:(cpu gpu gpu0 gpu1)' \
  '*:file:_files' && ret=0

return ret
