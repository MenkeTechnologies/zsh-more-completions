#compdef ogr_layer_algebra.py
# Documentation: https://gdal.org/en/stable/programs/ogr_layer_algebra.html
# Perform various Vector layer algebraic operations

local ret=1

_arguments -s -S \
  '(-h --help)--help[show help]' \
  '--help-general[show generic GDAL options]' \
  '-input_ds[input dataset path]:path:_files' \
  '-input_lyr[layer name in input_ds]:name' \
  '-method_ds[method dataset path]:path:_files' \
  '-method_lyr[layer name in method_ds]:name' \
  '-output_ds[output dataset path]:path:_files' \
  '-output_lyr[layer name in output_ds]:name' \
  '-overwrite[overwrite the output_ds]' \
  '*-opt[attributes for operation execution]:name=value' \
  '-f[output format]:format_name' \
  '*-dsco[dataset creation option]:name=value' \
  '*-lco[layer creation option]:name=value' \
  '-input_fields[fields from input layer to copy]:input_fields' \
  '-method_fields[fields from method layer to copy]:method_fields' \
  '-nlt[geometry type for created layer]:geom_type' \
  '-a_srs[assign output SRS without reprojecting]:srs_def' \
  '*:mode:(Union Intersection SymDifference Identity Update Clip Erase)' && ret=0

return ret
