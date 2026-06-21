#compdef bbwrap.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/bb-tools-user-guide/
# BBWrap: map reads to multiple references using one index in memory

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'ref=[reference FASTA file for indexing or mapping]:file:_files' \
  'in=[input sequences to map (comma-separated)]:files:_files' \
  'in1=[first read pairs for mapping]:file:_files' \
  'in2=[second read pairs for mapping]:file:_files' \
  'out=[output files for mapped sequences (comma-separated)]:files:_files' \
  'nodisk[map without creating an index on disk]' \
  'inlist=[file of input filenames, one per line]:file:_files' \
  'in2list=[file of second-pair input filenames]:file:_files' \
  'outlist=[file of output filenames, one per line]:file:_files' \
  'outmlist=[file of output filenames (alternate form)]:file:_files' \
  'append=[append to output files instead of overwriting]:bool:(t f)' \
  'mapper=[which mapper to use]:mapper:(BBMap BBMapPacBio BBMapPacBioSkimmer)' \
  '*:file:_files' && ret=0

return ret
