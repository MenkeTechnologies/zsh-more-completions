#compdef pdf2txt.py
# Documentation: https://github.com/pdfminer/pdfminer.six
# Source: pdfminer/pdfminer.six tools/pdf2txt.py — extract text/images from PDF to text/html/xml/tag.
# Reference accessed: 2026-06-02

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -s -S \
    '(- *)'{-v,--version}'[show version]' \
    '(-d --debug)'{-d,--debug}'[use debug logging level]' \
    '(-C --disable-caching)'{-C,--disable-caching}'[disable caching of resources like fonts]' \
    '*--page-numbers=[space-separated page numbers to parse]:pages:_default' \
    '(-p --pagenos)'{-p+,--pagenos=}'[comma-separated page numbers to parse]:pages:_default' \
    '(-m --maxpages)'{-m+,--maxpages=}'[maximum number of pages to parse]:n:_default' \
    '(-P --password)'{-P+,--password=}'[password for decrypting PDF file]:password:_default' \
    '(-R --rotation)'{-R+,--rotation=}'[degrees to rotate the PDF before processing]:degrees:(0 90 180 270)' \
    '(-n --no-laparams)'{-n,--no-laparams}'[ignore layout analysis parameters]' \
    '(-V --detect-vertical)'{-V,--detect-vertical}'[consider vertical text during layout analysis]' \
    '--line-overlap=[character line overlap threshold]:f:_default' \
    '(-M --char-margin)'{-M+,--char-margin=}'[character margin threshold]:f:_default' \
    '(-W --word-margin)'{-W+,--word-margin=}'[word margin threshold]:f:_default' \
    '(-L --line-margin)'{-L+,--line-margin=}'[line margin threshold]:f:_default' \
    '(-F --boxes-flow)'{-F+,--boxes-flow=}'[horizontal/vertical position weight for line order]:f:_default' \
    '(-A --all-texts)'{-A,--all-texts}'[perform layout analysis on text in figures]' \
    '(-o --outfile)'{-o+,--outfile=}'[output file path (or "-" for stdout)]:file:_files' \
    '(-t --output_type)'{-t+,--output_type=}'[output format]:type:(text html xml tag)' \
    '(-c --codec)'{-c+,--codec=}'[text encoding to use in output]:codec:_default' \
    '(-O --output-dir)'{-O+,--output-dir=}'[directory to extract images into]:dir:_files -/' \
    '(-Y --layoutmode)'{-Y+,--layoutmode=}'[HTML layout mode]:mode:(normal exact loose)' \
    '(-s --scale)'{-s+,--scale=}'[zoom level for generated HTML]:f:_default' \
    '(-S --strip-control)'{-S,--strip-control}'[remove control statements from XML output]' \
    '(- *)'{-h,--help}'[show help]' \
    '*:file:_files -g "*.pdf"' \
    && ret=0

return ret
