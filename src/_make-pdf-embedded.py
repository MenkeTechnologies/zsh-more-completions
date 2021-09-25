#compdef make-pdf-embedded.py

local arguments

arguments=(
  '--version[show programs version number and exit]'
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-f,--filters}'[filters to apply, f for FlateDecode (default), h for]'
  {-t,--nobinary}'[dont add the comment for binary format]'
  {-a,--autoopen}'[open the embedded file automatically when the PDF is]'
  {-b,--button}'[add a "button" to launch the embedded file]'
  {-s,--stego}'["hide" the embedded file by replacing /EmbeddedFiles]'
  {-m,--message}'[text to display in the PDF document]'
  '*:filename:_files'
)

_arguments -s $arguments
