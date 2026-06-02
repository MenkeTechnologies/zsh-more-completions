#compdef conv_cmap.py
# Documentation: https://github.com/pdfminer/pdfminer.six
# Source: pdfminer/pdfminer.six tools/conv_cmap.py — convert Adobe CID-to-Unicode CMap tables for PDFMiner.
# Reference accessed: 2026-06-02

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -s -S \
    '*-c+[encoding=codec mapping]:enc=codec:_default' \
    '(- *)'{-h,--help}'[show help]' \
    '1:output-dir:_files -/' \
    '2:regname:_default' \
    '*:cid2code-file:_files -g "*.txt*"' \
    && ret=0

return ret
