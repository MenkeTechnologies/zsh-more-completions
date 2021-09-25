#compdef a2x.py

local arguments

arguments=(
  '--version[show programs version number and exit]'
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-a,--attribute}'[set asciidoc attribute value]'
  '--asciidoc-opts[asciidoc options]'
  '--copy[DEPRECATED: does nothing]'
  '--conf-file[configuration file]'
  {-D,--destination-dir}'[output directory (defaults to SOURCE_FILE directory)]'
  {-d,--doctype}'[article, manpage, book]'
  {-b,--backend}'[name of backend plugin]'
  '--epubcheck[check EPUB output with epubcheck]'
  {-f,--format}'[chunked, epub, htmlhelp, manpage, pdf, text, xhtml]'
  '--icons[use admonition, callout and navigation icons]'
  '--icons-dir[admonition and navigation icon directory]'
  {-k,--keep-artifacts}'[do not delete temporary build files]'
  '--lynx[use lynx to generate text files]'
  {-L,--no-xmllint}'[do not check asciidoc output with xmllint]'
  {-n,--dry-run}'[just print the commands that would have been executed]'
  {-r,--resource}'[resource file or directory containing resource files]'
  {-m,--resource-manifest}'[read resources from FILE]'
  '--resource-dir[DEPRECATED: use --resource]'
  {-s,--skip-asciidoc}'[DEPRECATED: redundant]'
  '--stylesheet[HTML CSS stylesheet file name]'
  '--safe[DEPRECATED: does nothing]'
  '--dblatex-opts[dblatex options]'
  '--backend-opts[backend plugin options]'
  '--fop[use FOP to generate PDF files]'
  '--fop-opts[options for FOP pdf generation]'
  '--xsltproc-opts[xsltproc options for XSL stylesheets]'
  '--xsl-file[custom XSL stylesheet]'
  {-v,--verbose}'[increase verbosity]'
  '*:filename:_files'
)

_arguments -s $arguments
