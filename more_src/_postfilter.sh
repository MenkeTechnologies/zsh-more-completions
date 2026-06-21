#compdef postfilter.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/postfilter.sh
# BBTools: map reads to assembly and filter contigs by coverage

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[file containing input reads]:file:_files' \
  'in2=-[optional file containing read mates]:file:_files' \
  'ref=-[file containing input assembly]:file:_files' \
  'cov=-[file to write coverage stats]:file:_files' \
  'out=-[destination of clean output assembly]:file:_files' \
  'outdirty=-[destination of removed contigs]:file:_files' \
  'ow=-[overwrite existing files]:bool:(t f)' \
  'app=-[append to existing files]:bool:(t f)' \
  'zl=-[compression level 1-9]:level:' \
  'int=-[input reads interleaved]:bool:(t f)' \
  'minc=-[discard contigs with lower average coverage]:int:' \
  'minp=-[discard contigs with lower percent covered bases]:int:' \
  'minr=-[discard contigs with fewer mapped reads]:int:' \
  'minl=-[discard shorter contigs]:int:' \
  'trim=-[trim first and last X bases of each sequence]:int:' \
  '*:file:_files' && ret=0

return ret
