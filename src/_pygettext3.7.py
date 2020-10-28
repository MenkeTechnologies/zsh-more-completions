#compdef pygettext3.7.py

local arguments

arguments=(
  '-a[]'
  '--extract-all[extract all strings.]'
  '-d[]'
  '--default-domain[rename the default output file from messages.pot to name.pot.]'
  '-E[]'
  '--escape[replace non-ASCII characters with octal escape sequences.]'
  '-D[]'
  '--docstrings[extract module, class, method, and function docstrings.  These do]'
  '-h[]'
  '--help[print this help message and exit.]'
  '-k[]'
  '--keyword[keywords to look for in addition to the default set, which are:]'
  '-K[]'
  '--no-default-keywords[disable the default set of keywords (see above).  Any keywords]'
  '--no-location[do not write filename/lineno location comments.]'
  '-n[]'
  '--add-location[write filename/lineno location comments indicating where each]'
  '-o[]'
  '--output[rename the default output file from messages.pot to filename.  If]'
  '-p[]'
  '--output-dir[output files will be placed in directory dir.]'
  '-S[]'
  '--style[specify which style to use for location comments.  Two styles are]'
  '-v[]'
  '--verbose[print the names of the files being processed.]'
  '-V[]'
  '--version[print the version of pygettext and exit.]'
  '-w[]'
  '--width[set width of output to columns.]'
  '-x[]'
  '--exclude-file[specify a file that contains a list of strings that are not be]'
  '-X[]'
  '--no-docstrings[specify a file that contains a list of files (one per line) that]'
  '*:filename:_files'
)

_arguments -s $arguments
