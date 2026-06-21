#compdef RetroTS.py
# Documentation: https://afni.nimh.nih.gov/pub/dist/doc/program_help/RetroTS.py.html
# Create physiological noise regressors from cardiac/respiratory data

local ret=1

_arguments -s \
  '-r[respiration data file]:file:_files' \
  '-c[cardiac data file]:file:_files' \
  '-p[physiological sampling frequency Hz]:freq' \
  '-n[number of slices]:num' \
  '-v[volume TR in seconds]:tr' \
  '-phys_file[BIDS physio file]:file:_files' \
  '-phys_json[BIDS physio metadata JSON]:file:_files' \
  '-prefix[prefix for output file]:prefix' \
  '-rvt_shifts[shifts in seconds of RVT signal]:shifts' \
  '-rvt_out[write RVT regressors]' \
  '-respiration_cutoff_frequency[respiratory lowpass cutoff Hz]:freq' \
  '-cardiac_cutoff_frequency[cardiac lowpass cutoff Hz]:freq' \
  '-cardiac_out[write cardiac regressors]' \
  '-respiration_out[write respiratory regressors]' \
  '-interpolation_style[resampling kernel]:style' \
  '-fir_order[order of FIR filter]:order' \
  '-quiet[show progress output]' \
  '-demo[run demonstration]' \
  '-show_graphs[display graphs]' \
  '-debug[drop into debugger on exception]' \
  '-slice_offset[slice acquisition time offsets]:offsets' \
  '-slice_major[slice ordering parameter]:val' \
  '-slice_order[slice timing]:order:(alt+z alt-z seq+z seq-z custom)' \
  '-zero_phase_offset[phase offset parameter]:val' \
  '-legacy_transform[use original Matlab version]:val:(0 1)' && ret=0

return ret
