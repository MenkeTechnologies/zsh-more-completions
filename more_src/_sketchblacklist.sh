#compdef sketchblacklist.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/
# BBTools SketchBlacklist: build a blacklist sketch of common kmers

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input FASTA file]:file:_files' \
  'out=[output sketch filename]:file:_files' \
  'mintaxcount=[sketch kmers occurring in at least this many taxa]:count' \
  'k=[kmer length (1-32)]:k' \
  'mode=[count method]:mode:(sequence taxa)' \
  'name=[set the blacklist sketch name]:name' \
  'delta=[enable delta-compression]:bool:(t f)' \
  'a48=[use ASCII-48 encoding instead of hex]:bool:(t f)' \
  'amino=[amino-acid mode toggle]:bool:(t f)' \
  'entropy=[minimum entropy threshold]:value' \
  'keyfraction=[adjust blacklist size by ignoring key fractions]:value' \
  'tree=[taxtree file path]:file:_files' \
  'gi=[gitable file path]:file:_files' \
  'accession=[NCBI accession-to-taxid files]:file:_files' \
  'taxlevel=[taxonomic rank for merging hits]:level' \
  'prefilter=[use bloom filter for low-count kmers]:bool:(t f)' \
  'prepasses=[prefilter pass count]:count' \
  'prehashes=[prefilter hash count]:count' \
  'prebits=[override prefilter cell bits]:value' \
  'tossjunk=[discard taxonomically uninformative sequences]:bool:(t f)' \
  'silva=[parse headers using Silva syntax]:bool:(t f)' \
  '-Xmx[set maximum heap memory]:mem' \
  '*:file:_files' && ret=0

return ret
