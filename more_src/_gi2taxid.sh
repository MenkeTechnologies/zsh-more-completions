#compdef gi2taxid.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/
# BBTools gi2taxid: rename sequence headers with NCBI taxids

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input sequences (fasta)]:file:_files' \
  'out=[destination for renamed sequences]:file:_files' \
  'invalid=[destination for headers with no taxid]:file:_files' \
  'keepall=[keep sequences without taxid in normal output]:bool:(t f)' \
  'prefix=[append taxid as prefix retaining original header]:bool:(t f)' \
  'title=[set title of new number]:title' \
  'ziplevel=[gzip compression level]:level' \
  'zl=[gzip compression level]:level' \
  'pigz=[use parallel gzip]:bool:(t f)' \
  'silva=[parse headers in Silva format]:bool:(t f)' \
  'shrinknames=[replace concatenated headers with first]:bool:(t f)' \
  'deleteinvalid=[delete output if any invalid headers exist]:bool:(t f)' \
  'server=[use taxonomy server instead of local files]:bool:(t f)' \
  'tree=[specify taxtree file]:file:_files' \
  'gi=[specify gitable file]:file:_files' \
  'accession=[NCBI accession-to-taxid files]:file:_files' \
  '-Xmx[set maximum RAM allocation]:mem' \
  '*:file:_files' && ret=0

return ret
