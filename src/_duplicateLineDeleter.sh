#compdef duplicateLineDeleter.sh

local arguments

arguments=(
  {-a,--archive}'[same as -dR --preserve=all]'
  '--attributes-only[dont copy the file data, just the attributes]'
  '--backup[make a backup of each existing destination file]'
  '-b[like --backup but does not accept an argument]'
  '--copy-contents[copy contents of special files when recursive]'
  '-d[same as --no-dereference --preserve=links]'
  {-f,--force}'[if an existing destination file cannot be]'
  {-i,--interactive}'[prompt before overwrite (overrides a previous -n]'
  '-H[follow command-line symbolic links in SOURCE]'
  {-l,--link}'[hard link files instead of copying]'
  {-L,--dereference}'[always follow symbolic links in SOURCE]'
  {-n,--no-clobber}'[do not overwrite an existing file (overrides]'
  {-P,--no-dereference}'[never follow symbolic links in SOURCE]'
  '-p[same as --preserve=mode,ownership,timestamps]'
  '--preserve[preserve the specified attributes (default:]'
  '--no-preserve[dont preserve the specified attributes]'
  '--parents[use full source file name under DIRECTORY]'
  {-R,-r,--recursive}'[copy directories recursively]'
  '--reflink[control clone/CoW copies. See below]'
  '--remove-destination[remove each existing destination file before]'
  '--sparse[control creation of sparse files. See below]'
  '--strip-trailing-slashes[remove any trailing slashes from each SOURCE]'
  {-s,--symbolic-link}'[make symbolic links instead of copying]'
  {-S,--suffix}'[override the usual backup suffix]'
  {-t,--target-directory}'[copy all SOURCE arguments into DIRECTORY]'
  {-T,--no-target-directory}'[treat DEST as a normal file]'
  {-u,--update}'[copy only when the SOURCE file is newer]'
  {-v,--verbose}'[explain what is being done]'
  {-x,--one-file-system}'[stay on this file system]'
  '-Z[set SELinux security context of destination]'
  '--context[like -Z, or if CTX is specified then set the]'
  '--help[display this help and exit]'
  '--version[output version information and exit]'
  '*:filename:_files'
)

_arguments -s $arguments
