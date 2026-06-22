#compdef icecreamfinder.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/
# BBTools IceCreamFinder: detect PacBio triangle (inverted-repeat) reads

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[primary input file]:file:_files' \
  'out=[output for good reads]:file:_files' \
  'outgood=[output for good reads]:file:_files' \
  'outa=[output for reads with inverted repeats]:file:_files' \
  'outambig=[output for reads with inverted repeats]:file:_files' \
  'outb=[output for suspected chimeric reads]:file:_files' \
  'outbad=[output for suspected chimeric reads]:file:_files' \
  'outj=[output for junctions in inverted repeat reads]:file:_files' \
  'stats=[redirect screen output to file]:file:_files' \
  'json=[print statistics as JSON]:bool:(t f)' \
  'ambig=[destination for ambiguous reads]:dest:(good bad good,bad null)' \
  'overwrite=[allow overwriting existing files]:bool:(t f)' \
  'ziplevel=[compression level (1-9)]:level' \
  'alignrc=[align reverse-complement for inverted repeats]:bool:(t f)' \
  'alignadapter=[align adapter sequence to reads]:bool:(t f)' \
  'adapter=[specify custom adapter sequence]:seq' \
  'icecreamonly=[remove only triangle reads]:bool:(t f)' \
  'targetqlen=[query length from read tips]:value' \
  'qlenfraction=[maximum query as read length fraction]:value' \
  'minlen=[minimum output read length after trimming]:value' \
  'minqlen=[minimum query length]:value' \
  'ccs=[input reads are CCS (full-pass)]:bool:(t f)' \
  'trim=[trim adapter from read tips]:bool:(t f)' \
  'trimpolya=[trim poly-A and poly-T sequences]:bool:(t f)' \
  'jni=[enable C code for higher speed]:bool:(t f)' \
  'minentropy=[low-entropy read removal cutoff]:value' \
  'entropyk=[kmer length for entropy calculation]:value' \
  'entropywindow=[window size for entropy calculation]:value' \
  '-Xmx[set maximum Java memory]:mem' \
  '*:file:_files' && ret=0

return ret
