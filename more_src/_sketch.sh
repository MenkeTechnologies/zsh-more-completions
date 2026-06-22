#compdef sketch.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/
# BBTools Sketch: generate MinHash sketches from sequences

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input fasta file]:file:_files' \
  'out=[output sketch filename]:file:_files' \
  'blacklist=[sketch file to ignore keys from]:file:_files' \
  'files=[number of output sketch files]:count' \
  'k=[kmer length (1-32)]:k' \
  'rcomp=[examine reverse-complement kmers]:bool:(t f)' \
  'amino=[use amino acid mode]:bool:(t f)' \
  'translate=[call genes and translate to proteins]:bool:(t f)' \
  'mode=[output mode]:mode:(single sequence taxa img)' \
  'delta=[delta-compress sketches]:bool:(t f)' \
  'a48=[encode as ASCII-48 instead of hex]:bool:(t f)' \
  'depth=[track kmer appearance frequency]:bool:(t f)' \
  'entropy=[minimum entropy threshold]:value' \
  'ssu=[scan for full-length SSU sequences]:bool:(t f)' \
  'size=[fixed sketch size]:size' \
  'maxfraction=[maximum genomic kmer fraction]:value' \
  'minsize=[minimum genome size for sketch generation]:value' \
  'autosize=[enable flexible sizing]:bool:(t f)' \
  'sizemult=[multiply autosized sketch size]:value' \
  'density=[fraction of genomic kmers to use]:value' \
  'taxid=[set NCBI taxid]:taxid' \
  'imgid=[set IMG identifier]:imgid' \
  'spid=[set JGI sequencing project id]:spid' \
  'name=[set sketch name]:name' \
  'tree=[taxtree file location]:file:_files' \
  'gi=[gitable file location]:file:_files' \
  'accession=[NCBI accession-to-taxid files]:file:_files' \
  'taxlevel=[taxa rank threshold]:level' \
  'prefilter=[filter junk from large datasets]:bool:(t f)' \
  'tossjunk=[discard uninformative sequences]:bool:(t f)' \
  '-Xmx[set Java maximum memory]:mem' \
  '*:file:_files' && ret=0

return ret
