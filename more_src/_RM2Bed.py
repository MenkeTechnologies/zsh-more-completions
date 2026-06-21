#compdef RM2Bed.py
# Documentation: https://github.com/Dfam-consortium/RepeatMasker/blob/master/util/RM2Bed.py
# Convert RepeatMasker .out/.align annotations to sorted BED

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-l --log_level)'{-l,--log_level}'=[logging verbosity level]:level:(DEBUG INFO WARNING ERROR)' \
  '(-d --out_dir)'{-d,--out_dir}'=[directory for output files]:dir:_files -/' \
  '(-sp --split)'{-sp,--split}'=[split into files by name/family/class]:by:(name family class)' \
  '(-p --out_prefix)'{-p,--out_prefix}'=[prefix for output file]:prefix:' \
  '(-m --min_length)'{-m,--min_length}'=[minimum size of hit to include]:bp:' \
  '(-n --min_hit_num)'{-n,--min_hit_num}'=[minimum hits before file created]:num:' \
  '(-dmax --max_divergence)'{-dmax,--max_divergence}'=[maximum divergence allowed]:div:' \
  '(-dmin --min_divergence)'{-dmin,--min_divergence}'=[minimum divergence allowed]:div:' \
  '(-s --sort_criterion)'{-s,--sort_criterion}'=[sort criterion]:crit:(size name family class divergence)' \
  '(-o --ovlp_resolution)'{-o,--ovlp_resolution}'=[overlap resolution]:mode:(higher_score longer_element lower_divergence)' \
  '1:rm_file:_files -g "*.(out|align)"' \
  '2::output_bed:_files' && ret=0

return ret
