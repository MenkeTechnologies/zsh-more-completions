#compdef splitnextera.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/splitnextera.sh
# BBTools: split Nextera LMP reads at junctions

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[input reads]:file:_files' \
  'out=-[output for LMP-orientation pairs]:file:_files' \
  'outf=-[output for fragment-orientation pairs]:file:_files' \
  'outu=-[pairs with unknown orientation]:file:_files' \
  'outs=-[singleton output]:file:_files' \
  'ow=-[overwrite existing files]:bool:(t f)' \
  'app=-[append to existing files]:bool:(t f)' \
  'zl=-[compression level 1-9]:level:' \
  'int=-[input file interleaved]:bool:(t f)' \
  'qin=-[input quality ASCII offset]:offset:(33 64 auto)' \
  'qout=-[output quality ASCII offset]:offset:(33 64 auto)' \
  'mask=-[auto-convert junctions to a symbol]:bool:(t f)' \
  'junction=-[junction designation symbol]:symbol:' \
  'innerlmp=-[generate LMP from inner pair too]:bool:(t f)' \
  'rename=-[rename read 2 of single-ended output]:bool:(t f)' \
  'minlength=-[do not output reads shorter than this]:int:' \
  'merge=-[merge overlapping reads before junction search]:bool:(t f)' \
  'reads=-[process only this many input reads]:int:' \
  'samplerate=-[randomly output this fraction of reads]:float:' \
  'sampleseed=-[prng seed for sampling]:int:' \
  '*:file:_files' && ret=0

return ret
