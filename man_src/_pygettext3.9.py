#compdef pygettext3.9.py

local arguments

arguments=(
  {-a,--extract-all}'[extract all strings]'
  '-d[Enable debug mode]'
  {-E,--escape}'[replace non-ASCII characters with octal escape sequences]'
  {-D,--docstrings}'[extract module, class, method, and function docstrings.  These do]'
  '-h[Display help]'
  {-k,--keyword}'[keywords to look for in addition to the default set, which are:]'
  {-K,--no-default-keywords}'[disable the default set of keywords (see above).  Any keywords]'
  '--no-location[do not write filename/lineno location comments]'
  {-n,--add-location}'[write filename/lineno location comments indicating where each]'
  {-o,--output}'[rename the default output file from messages.pot to filename.  If]'
  {-p,--output-dir}'[output files will be placed in directory dir]'
  {-S,--style}'[specify which style to use for location comments.  Two styles are]'
  '-v[Verbose output]'
  '-V[Display version]'
  {-w,--width}'[set width of output to columns]'
  {-x,--exclude-file}'[specify a file that contains a list of strings that are not be]'
  {-X,--no-docstrings}'[specify a file that contains a list of files (one per line) that]'
  '*:filename:_files'
)

_arguments -s $arguments
