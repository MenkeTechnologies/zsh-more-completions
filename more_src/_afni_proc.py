#compdef afni_proc.py
# Documentation: https://afni.nimh.nih.gov/pub/dist/doc/program_help/afni_proc.py.html
# Generate a tcsh script for single-subject FMRI processing

local ret=1

_arguments -s \
  '-subj_id[subject identifier]:id' \
  '-dsets[EPI time series datasets]:*:datasets:_files' \
  '-copy_anat[anatomical dataset to copy]:dataset:_files' \
  '-blocks[ordered list of processing blocks]:*:blocks' \
  '-do_block[add non-default blocks]:*:blocks' \
  '-script[output tcsh script name]:file:_files' \
  '-out_dir[results directory name]:dir' \
  '-execute[run the generated script]' \
  '-regress_stim_times[stimulus timing files]:*:files:_files' \
  '-regress_stim_labels[labels for stimulus conditions]:*:labels' \
  '-regress_basis[basis function for regressors]:basis' \
  '-tcat_remove_first_trs[remove initial TRs]:num' \
  '-volreg_align_to[volume to align toward]:volume' \
  '-volreg_align_e2a[align EPI to anatomy]' \
  '-volreg_tlrc_warp[warp EPI to standard space]' \
  '-blur_size[blur kernel size mm FWHM]:size' \
  '-tlrc_base[template for standard space]:dataset:_files' \
  '-tlrc_NL_warp[apply nonlinear warp to template]' \
  '-mask_epi_anat[intersect EPI and anatomy masks]:yesno:(yes no)' \
  '-regress_censor_motion[censor TRs over motion threshold]:thresh' \
  '-regress_censor_outliers[censor TRs with outliers]:thresh' \
  '-regress_motion_per_run[motion regressors per run]' \
  '-regress_bandpass[frequency bandpass filtering]:band' \
  '-regress_anaticor[regress local white matter signal]' \
  '-anat_has_skull[anatomy includes skull]:yesno:(yes no)' \
  '-align_unifize_epi[EPI uniformity correction]:yesno:(yes no)' \
  '-align_opts_aea[options for align_epi_anat.py]:*:opts' \
  '-dsets_me_echo[multi-echo datasets per echo]:*:datasets:_files' \
  '-echo_times[echo times for multi-echo data]:*:times' \
  '-combine_method[echo combination method]:method:(OC tedana)' \
  '-surf_spec[surface specification files]:*:files:_files' \
  '-regress_opts_3dD[options for 3dDeconvolve]:*:opts' \
  '-help[display help]' \
  '*:dataset:_files' && ret=0

return ret
