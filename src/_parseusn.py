#compdef parseusn.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-f,--infile}'[input filename, extracted $UsnJrnl:$J]'
  {-m,--mft}'[MFT filename, for getting the full path]'
  {-o,--outfile}'[output filename, default to STDOUT]'
  '-t[tab,body,tln,l2ttln}, --type {csv,tab,body,tln,l2ttln}]'
  {-A,--append}'[open output file in append mode instead of overwrite.]'
  {-a,--all}'[print all records, not just closed records. True for]'
  {-l,--long}'[print long strings for the file attribute flgas.]'
  {-r,--replace}'[replace original file with temp file (removes NULLs in]'
  '*:filename:_files'
)

_arguments -s $arguments
