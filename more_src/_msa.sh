#compdef msa.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/msa.sh
# BBTools: multiple sequence alignment to a reference

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[file containing reads]:file:_files' \
  'out=-[sam output file]:file:_files' \
  'literal=-[bases to match, or comma-delimited list]:seq:' \
  'ref=-[fasta file of bases to match]:file:_files' \
  'rcomp=-[also look for reverse-complements]:bool:(t f)' \
  'addr=-[add r_ prefix to reverse-complemented alignments]:bool:(t f)' \
  'replicate=-[copy sequences for every undefined base combination]:bool:(t f)' \
  'cutoff=-[ignore alignments with identity below this 0-1]:float:' \
  'swap=-[swap reference and query]:bool:(t f)' \
  '*:file:_files' && ret=0

return ret
