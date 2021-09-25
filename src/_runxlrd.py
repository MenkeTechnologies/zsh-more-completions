#compdef runxlrd.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-l,--logfilename}'[contains error messages]'
  {-v,--verbosity}'[level of information and diagnostics provided]'
  {-m,--mmap}'[1: use mmap; 0: dont use mmap; -1: accept heuristic]'
  {-e,--encoding}'[encoding override]'
  {-f,--formatting}'[0 (default): no fmt info 1: fmt info (all cells)]'
  {-g,--gc}'[0: auto gc enabled; 1: auto gc disabled, manual]'
  {-s,--onesheet}'[restrict output to this sheet (name or index)]'
  {-u,--unnumbered}'[omit line numbers or offsets in biff_dump]'
  {-d,--on-demand}'[load sheets on demand instead of all at once]'
  {-t,--suppress-timing}'[dont print timings (diffs are less messy)]'
  {-r,--ragged-rows}'[open_workbook(..., ragged_rows=True)]'
  '*:filename:_files'
)

_arguments -s $arguments
