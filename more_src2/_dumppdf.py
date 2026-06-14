#compdef dumppdf.py
# Documentation: https://github.com/pdfminer/pdfminer.six
# Source: pdfminer/pdfminer.six tools/dumppdf.py — dump the internal structure of a PDF file.
# Reference accessed: 2026-06-02

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -s -S \
    '(- *)'{-v,--version}'[show version]' \
    '(-d --debug)'{-d,--debug}'[use debug logging level]' \
    '(-T --extract-toc)'{-T,--extract-toc}'[extract the document table of contents]' \
    '(-E --extract-embedded)'{-E+,--extract-embedded=}'[extract embedded files to the given directory]:dir:_files -/' \
    '*--page-numbers=[space-separated page numbers to parse]:pages:_default' \
    '(-p --pagenos)'{-p+,--pagenos=}'[comma-separated page numbers to parse]:pages:_default' \
    '(-i --objects)'{-i+,--objects=}'[comma-separated list of object numbers to extract]:objects:_default' \
    '(-a --all)'{-a,--all}'[extract all objects]' \
    '--show-fallback-xref[also show the fallback xref]' \
    '(-P --password)'{-P+,--password=}'[password for decrypting PDF file]:password:_default' \
    '(-o --outfile)'{-o+,--outfile=}'[output file path (or "-" for stdout)]:file:_files' \
    '(-r --raw-stream -b --binary-stream -t --text-stream)'{-r,--raw-stream}'[write stream objects without encoding]' \
    '(-r --raw-stream -b --binary-stream -t --text-stream)'{-b,--binary-stream}'[write stream objects with binary encoding]' \
    '(-r --raw-stream -b --binary-stream -t --text-stream)'{-t,--text-stream}'[write stream objects as plain text]' \
    '(- *)'{-h,--help}'[show help]' \
    '*:file:_files -g "*.pdf"' \
    && ret=0

return ret
