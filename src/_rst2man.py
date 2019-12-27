#compdef rst2man.py

local arguments

arguments=(
  '--title[specify the document title as metadata.]'
  {--generator,-g}'[include a "Generated by Docutils" credit and link.]'
  '--no-generator[do not include a generator credit.]'
  {--date,-d}'[include the date at the end of the document (UTC).]'
  {--time,-t}'[include the time & date (UTC).]'
  '--no-datestamp[do not include a datestamp of any kind.]'
  {--source-link,-s}'[include a "View document source" link.]'
  '--source-url[use <URL> for a source link; implies --source-link.]'
  '--no-source-link[do not include a "View document source" link.]'
  '--toc-entry-backlinks[link from section headers to TOC entries. (default)]'
  '--toc-top-backlinks[link from section headers to the top of the TOC.]'
  '--no-toc-backlinks[disable backlinks to the table of contents.]'
  '--footnote-backlinks[link from footnotes/citations to references. (default)]'
  '--no-footnote-backlinks[disable backlinks from footnotes and citations.]'
  '--section-numbering[enable section numbering by Docutils. (default)]'
  '--no-section-numbering[disable section numbering by Docutils.]'
  '--strip-comments[remove comment elements from the document tree.]'
  '--leave-comments[leave comment elements in the document tree. (default)]'
  '--strip-elements-with-class[remove all elements with classes="<class>" from the]'
  '--strip-class[remove all classes="<class>" attributes from elements]'
  {--report,-r}'[report system messages at or higher than <level>:]'
  {--verbose,-v}'[report all system messages. (Same as "--report=1".)]'
  {--quiet,-q}'[report no system messages. (Same as "--report=5".)]'
  '--halt[halt execution at system messages at or above <level>.]'
  '--strict[halt at the slightest problem. Same as "--halt=info".]'
  '--exit-status[enable a non-zero exit status for non-halting system]'
  '--debug[enable debug-level system messages and diagnostics.]'
  '--no-debug[disable debug output. (default)]'
  '--warnings[send the output of system messages to <file>.]'
  '--traceback[enable Python tracebacks when Docutils is halted.]'
  '--no-traceback[disable Python tracebacks. (default)]'
  {--input-encoding,-i}'[specify the encoding and optionally the error handler]'
  '--input-encoding-error-handler[specify the error handler for undecodable characters.]'
  {--output-encoding,-o}'[specify the text encoding and optionally the error]'
  '--output-encoding-error-handler[specify error handler for unencodable output]'
  {--error-encoding,-e}'[specify text encoding and error handler for error]'
  '--error-encoding-error-handler[specify the error handler for unencodable characters]'
  {--language,-l}'[specify the language (as BCP 47 language tag).]'
  '--record-dependencies[write output file dependencies to <file>.]'
  '--config[read configuration settings from <file>, if it exists.]'
  {--version,-V}'[show this programs version number and exit.]'
  {--help,-h}'[show this help message and exit.]'
  '--pep-references[recognize and link to standalone PEP references (like]'
  '--pep-base-url[base URL for PEP references (default]'
  '--pep-file-url-template[template for PEP file part of URL. (default]'
  '--rfc-references[recognize and link to standalone RFC references (like]'
  '--rfc-base-url[base URL for RFC references (default]'
  '--tab-width[set number of spaces for tab expansion (default 8).]'
  '--trim-footnote-reference-space[remove spaces before footnote references.]'
  '--leave-footnote-reference-space[leave spaces before footnote references.]'
  '--no-file-insertion[disable directives that insert the contents of]'
  '--file-insertion-enabled[enable directives that insert the contents of external]'
  '--no-raw[disable the "raw" directives; replaced with a]'
  '--raw-enabled[enable the "raw" directive. Enabled by default.]'
  '--syntax-highlight[token name set for parsing code with Pygments: one of]'
  '--smart-quotes[/no/alt>]'
  '--smartquotes-locales[language:quotes,...\]>]'
  '--word-level-inline-markup[inline markup recognized at word boundaries only]'
  '--character-level-inline-markup[inline markup recognized anywhere, regardless of]'
  '--no-doc-title[disable the promotion of a lone top-level section]'
  '--no-doc-info[disable the bibliographic field list transform]'
  '--section-subtitles[activate the promotion of lone subsection titles to]'
  '--no-section-subtitles[deactivate the promotion of lone subsection titles.]'
  '*:filename:_files'
)

_arguments -s $arguments
