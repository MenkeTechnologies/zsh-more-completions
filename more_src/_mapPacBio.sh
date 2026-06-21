#compdef mapPacBio.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/mapPacBio.sh
# BBTools: map PacBio reads to a reference (BBMapPacBio)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[primary input or read 1 input]:file:_files' \
  'in2=-[read 2 input if in two files]:file:_files' \
  'out=-[output sam/bam file]:file:_files' \
  'ref=-[reference fasta file]:file:_files' \
  'build=-[index build number]:int:' \
  'overwrite=-[overwrite existing files]:bool:(true false)' \
  '*:file:_files' && ret=0

return ret
