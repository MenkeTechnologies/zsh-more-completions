#compdef gdal_calc.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '--calc[calculation in gdalnumeric syntax using +-/* or any]'
  '-A[input gdal raster file, you can use any letter (A-Z)]'
  '--A[_band=n number of raster band for file A (default 1)]'
  '--outfile[output file to generate or fill]'
  '--NoDataValue[output nodata value (default datatype specific value)]'
  '--type[output datatype, must be one of \[Int32, Int16]'
  '--format[GDAL format for output file]'
  {--creation-option,--co}'[passes a creation option to the output format driver.]'
  '--allBands[process all bands of given raster (A-Z)]'
  '--overwrite[overwrite output file if it already exists]'
  '--debug[print debugging information]'
  '--quiet[suppress progress messages]'
  '--optfile[read the named file and substitute the contents into]'
  '*:filename:_files'
)

_arguments -s $arguments
