#compdef gen_group_command.py
# Documentation: https://afni.nimh.nih.gov/pub/dist/doc/program_help/gen_group_command.py.html
# Generate group analysis command scripts

local ret=1

_arguments -s \
  '-command[group analysis program]:cmd:(3dttest++ 3dMEMA 3dANOVA2 3dANOVA3 datatable)' \
  '*-dsets[input dataset list]:*:datasets:_files' \
  '-dset_sid_list[include only these subject IDs]:*:sids' \
  '-dset_sid_omit_list[exclude these subject IDs]:*:sids' \
  '-dset_index0_list[restrict by 0-based indices]:*:values' \
  '-dset_index1_list[restrict by 1-based indices]:*:values' \
  '-subs_betas[beta weight sub-bricks]:*:bricks' \
  '-subs_tstats[t-statistic sub-bricks]:*:bricks' \
  '-dt_factor_list[factor labels and values]:*:spec' \
  '-dt_tsv[subject attribute TSV file]:file:_files' \
  '-dt_sep[column separator for output]:sep' \
  '-write_script[save command to file]:file:_files' \
  '-prefix[output dataset prefix]:prefix' \
  '-set_labels[name dataset groups]:*:labels' \
  '-subj_prefix[subject name prefix]:prefix' \
  '-subj_suffix[subject name suffix]:suffix' \
  '-factors[factor levels per condition]:*:levels' \
  '-keep_dirent_pre[retain directory entry prefix]' \
  '-hpad[pad subject prefix leftward]:pad' \
  '-tpad[pad subject prefix rightward]:pad' \
  '-options[pass options to underlying command]:*:opts' \
  '-type[test type]:type:(paired unpaired)' \
  '-verb[verbosity level]:level' \
  '-help[display help]' \
  '-hist[module history]' \
  '-show_valid_opts[list valid options]' \
  '-ver[display version]' && ret=0

return ret
