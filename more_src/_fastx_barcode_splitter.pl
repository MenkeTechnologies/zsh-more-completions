#compdef fastx_barcode_splitter.pl
# Documentation: https://manpages.debian.org/testing/fastx-toolkit/fastx_barcode_splitter.pl.1.en.html
# FASTX-Toolkit: split a FASTA/Q stream into multiple files by barcode

local ret=1

_arguments -s -S \
  '--help[show help]' \
  '--bcfile[barcodes file name]:file:_files' \
  '--prefix[output file prefix (may include output directory)]:prefix' \
  '--suffix[output file suffix (optional, e.g. extension)]:suffix' \
  '--bol[match barcodes at the beginning of sequences]' \
  '--eol[match barcodes at the end of sequences]' \
  '--mismatches[maximum allowed mismatches (default 1)]:mismatches' \
  '--exact[same as --mismatches 0]' \
  '--partial[allow partial overlap of barcodes]:overlap' \
  '--quiet[do not print counts and summary]' \
  '--debug[print debug information to STDERR]' && ret=0

return ret
