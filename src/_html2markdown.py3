#compdef html2markdown.py3

local arguments

arguments=(
  {-h,--help}'[show this help message and exit]'
  '--default-image-alt[the default alt string for images with missing ones]'
  '--pad-tables[pad the cells to equal column width in tables]'
  '--no-wrap-links[dont wrap links during conversion]'
  '--wrap-list-items[wrap list items during conversion]'
  '--ignore-emphasis[dont include any formatting for emphasis]'
  '--reference-links[use reference style links instead of inline links]'
  '--ignore-links[dont include any formatting for links]'
  '--protect-links[protect links from line breaks surrounding them with]'
  '--ignore-images[dont include any formatting for images]'
  '--images-as-html[always write image tags as raw html; preserves]'
  '--images-to-alt[discard image data, only keep alt text]'
  '--images-with-size[write image tags with height and width attrs as raw]'
  {-g,--google-doc}'[convert an html-exported Google Document]'
  {-d,--dash-unordered-list}'[use a dash rather than a star for unordered list items]'
  {-e,--asterisk-emphasis}'[use an asterisk rather than an underscore for]'
  {-b,--body-width}'[number of characters per output line, 0 for no wrap]'
  {-i,--google-list-indent}'[number of pixels Google indents nested lists]'
  {-s,--hide-strikethrough}'[hide strike-through text. only relevant when -g is]'
  '--escape-all[escape all special characters. Output is less]'
  '--bypass-tables[format tables in HTML rather than Markdown syntax.]'
  '--ignore-tables[ignore table-related tags (table, th, td, tr) while]'
  '--single-line-break[use a single line break after a block element rather]'
  '--unicode-snob[use unicode throughout document]'
  '--no-automatic-links[do not use automatic links wherever applicable]'
  '--no-skip-internal-links[do not skip internal links]'
  '--links-after-para[put links after each paragraph instead of document]'
  '--mark-code[mark program code blocks with \[code\]...\[/code\]]'
  '--decode-errors[what to do in case of decode errors.ignore, strict]'
  '--open-quote[the character used to open quotes]'
  '--close-quote[the character used to close quotes]'
  '--version[show programs version number and exit]'
  '*:filename:_files'
)

_arguments -s $arguments
