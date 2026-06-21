#compdef filterbytaxa.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/bb-tools-user-guide/
# FilterByTaxa: include or exclude sequences by NCBI taxonomy

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[primary input, or read 1 input]:file:_files' \
  'out=[primary output, or read 1 output]:file:_files' \
  'results=[print a list of which taxa were retained]:file:_files' \
  'overwrite=[abort rather than overwrite an existing file]:bool:(t f)' \
  'showspeed=[suppress display of processing speed]:bool:(t f)' \
  'ziplevel=[compression level 1 through 9]:level:(1 2 3 4 5 6 7 8 9)' \
  'level=[taxonomic level for filtering operations]:level:' \
  'reqlevel=[require nodes to have ancestors at these levels]:level:' \
  'ids=[comma-delimited NCBI numeric IDs or a file path]:ids:' \
  'include=[f discards filtered sequences, t keeps them]:bool:(t f)' \
  'besteffort=[iteratively increase level when no hits]:bool:(t f)' \
  'tree=[specify a TaxTree file]:file:_files' \
  'gi=[specify a gitable file for gi numbers]:file:_files' \
  'accession=[specify NCBI accession to taxid files]:file:_files' \
  'printnodes=[print names of nodes added to the filter]:bool:(t f)' \
  'requirepresent=[crash if header cannot resolve to taxid]:bool:(t f)' \
  'regex=[filter names matching this Java regex]:regex:' \
  'contains=[filter names containing this substring]:string:' \
  '*:file:_files' && ret=0

return ret
