#compdef readelf.py

local arguments

arguments=(
  '--version[show programs version number and exit]'
  {-d,--dynamic}'[display the dynamic section]'
  {-H,--help}'[display this information]'
  {-h,--file-header}'[display the ELF file header]'
  {-l,--program-headers,--segments}'[display the program headers]'
  {-S,--section-headers,--sections}'[display the sections headers]'
  {-e,--headers}'[equivalent to: -h -l -S]'
  {-s,--symbols,--syms}'[display the symbol table]'
  {-n,--notes}'[display the core notes (if present)]'
  {-r,--relocs}'[display the relocations (if present)]'
  {-x,--hex-dump}'[dump the contents of section <number|name> as bytes]'
  {-p,--string-dump}'[dump the contents of section <number|name> as strings]'
  {-V,--version-info}'[display the version sections (if present)]'
  '--debug-dump[display the contents of DWARF debug sections. <what>]'
  '*:filename:_files'
)

_arguments -s $arguments
