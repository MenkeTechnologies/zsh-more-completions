#compdef fzf-preview.sh

local arguments

arguments=(
  '-M[use LIST as a colon-separated list of magic]'
  '-d[use default magic file]'
  '-i[do not further classify regular files]'
  '--help[display this help and exit]'
  {-v,--version}'[output version information and exit]'
  {-m,--magic-file}'[use LIST as a colon-separated list of magic]'
  {-z,--uncompress}'[try to look inside compressed files]'
  {-Z,--uncompress-noreport}'[only print the contents of compressed files]'
  {-b,--brief}'[do not prepend filenames to output lines]'
  {-c,--checking-printout}'[print the parsed form of the magic file, use in]'
  {-e,--exclude}'[exclude TEST from the list of test to be]'
  '--exclude-quiet[like exclude, but ignore unknown tests]'
  {-f,--files-from}'[read the filenames to be examined from FILE]'
  {-F,--separator}'[use string as separator instead of `:]'
  {-I,--mime}'[output MIME type strings (--mime-type and]'
  '--mime-encoding[)]'
  '--extension[output a slash-separated list of extensions]'
  '--mime-type[output the MIME type]'
  '--mime-encoding[output the MIME encoding]'
  {-k,--keep-going}'[dont stop at the first match]'
  {-l,--list}'[list magic strength]'
  {-L,--dereference}'[follow symlinks]'
  {-h,--no-dereference}'[dont follow symlinks (default)]'
  {-n,--no-buffer}'[do not buffer output]'
  {-N,--no-pad}'[do not pad output]'
  {-0,--print0}'[terminate filenames with ASCII NUL]'
  {-p,--preserve-date}'[preserve access times on files]'
  {-P,--parameter}'[set file engine parameter limits]'
  {-r,--raw}'[dont translate unprintable chars to \ooo]'
  {-s,--special-files}'[treat special (block/char devices) files as]'
  {-S,--no-sandbox}'[disable system call sandboxing]'
  {-C,--compile}'[compile file specified by -m]'
  {-D,--debug}'[print debugging messages]'
  '*:filename:_files'
)

_arguments -s $arguments
