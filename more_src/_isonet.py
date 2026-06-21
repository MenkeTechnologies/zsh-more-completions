#compdef isonet.py
# Documentation: https://github.com/IsoNet-cryoET/IsoNet/blob/master/tutorial/IsoNet_v0.2_Tutorial.md
# isonet.py - self-supervised missing-wedge correction for cryo-ET

local ret=1
local context state line
typeset -A opt_args

_arguments -C \
  '1: :->cmd' \
  '*:: :->args' && ret=0

case $state in
  cmd)
    local -a cmds
    cmds=(
      'prepare_star:create the master star file from a tomogram folder'
      'deconv:CTF deconvolution of tomograms'
      'make_mask:generate masks for tomograms'
      'extract:extract subtomograms for training'
      'refine:train the neural network'
      'predict:apply a trained model to tomograms'
      'prepare_subtomo_star:create a subtomogram star file'
      'gui:launch the graphical interface'
    )
    _describe -t commands 'isonet.py command' cmds && ret=0
    ;;
  args)
    case $line[1] in
      prepare_star)
        _arguments \
          '--output_star[output star file]:file:_files' \
          '--pixel_size[pixel size in Angstrom]:apix' \
          '--number_subtomos[number of subtomograms to extract]:n' \
          '*:folder:_files -/' && ret=0
        ;;
      deconv)
        _arguments \
          '--snrfalloff[SNR fall-off rate]:val' \
          '--deconv_folder[output folder for deconvolved tomos]:dir:_files -/' \
          '--tomo_index[indices of tomograms to process]:idx' \
          '--ncpu[number of CPUs]:n' \
          '--chunk_size[chunk size for processing]:n' \
          '--overlap_rate[overlap rate between chunks]:val' \
          '--highpassnyquist[high-pass cutoff as fraction of Nyquist]:val' \
          '*:star:_files' && ret=0
        ;;
      make_mask)
        _arguments \
          '--mask_folder[output folder for masks]:dir:_files -/' \
          '--density_percentage[density percentile threshold]:pct' \
          '--std_percentage[std percentile threshold]:pct' \
          '--patch_size[patch size for local std]:n' \
          '--z_crop[fraction to crop in z]:val' \
          '*:star:_files' && ret=0
        ;;
      extract)
        _arguments \
          '--cube_size[size of extracted cubes]:n' \
          '--crop_size[size of cropped region]:n' \
          '--use_deconv_tomo[use deconvolved tomograms]:val' \
          '*:star:_files' && ret=0
        ;;
      refine)
        _arguments \
          '--gpuID[GPU device ids]:gpus' \
          '--iterations[number of training iterations]:n' \
          '--noise_start_iter[iteration to start adding noise]:n' \
          '--noise_level[noise level to add]:val' \
          '--pretrained_model[pretrained model file]:file:_files' \
          '--continue_from[continue training from json]:file:_files' \
          '--result_dir[output directory]:dir:_files -/' \
          '--preprocessing_ncpus[CPUs for preprocessing]:n' \
          '--data_dir[training data directory]:dir:_files -/' \
          '--batch_size[training batch size]:n' \
          '--epochs[epochs per iteration]:n' \
          '--steps_per_epoch[steps per epoch]:n' \
          '--unet_depth[depth of U-Net]:n' \
          '--filter_base[base number of filters]:n' \
          '--normalize_percentile[normalize by percentile]:val' \
          '*:star:_files' && ret=0
        ;;
      predict)
        _arguments \
          '--gpuID[GPU device ids]:gpus' \
          '--cube_size[size of cubes]:n' \
          '--crop_size[size of cropped region]:n' \
          '--batch_size[batch size]:n' \
          '--normalize_percentile[normalize by percentile]:val' \
          '*:file:_files' && ret=0
        ;;
      prepare_subtomo_star)
        _arguments \
          '--output_star[output star file]:file:_files' \
          '--cube_size[cube size]:n' \
          '*:folder:_files -/' && ret=0
        ;;
      *)
        _files && ret=0
        ;;
    esac
    ;;
esac

return ret
