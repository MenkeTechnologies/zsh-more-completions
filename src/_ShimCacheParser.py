#compdef ShimCacheParser.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-v,--verbose}'[toggles verbose output]'
  {-t,--isotime}'[use YYYY-MM-DD ISO format instead of MM/DD/YY default]'
  {-B,--bom}'[write UTF8 BOM to CSV for easier Excel 2007+ import]'
  {-l,--local}'[reads data from local system]'
  {-b,--bin}'[reads data from a binary BIN file]'
  {-m,--mir}'[reads data from a MIR XML file]'
  {-z,--zip}'[reads ZIP file containing MIR registry acquisitions]'
  {-i,--hive}'[reads data from a registry reg HIVE]'
  {-r,--reg}'[reads data from a .reg registry export file]'
  {-o,--out}'[writes to CSV data to FILE (default is STDOUT)]'
  '*:filename:_files'
)

_arguments -s $arguments
