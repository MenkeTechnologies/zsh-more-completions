#compdef synthmda.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/synthmda.sh
# BBTools: generate synthetic MDA-amplified reads from a genome

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'reads=-[generate this many reads]:int:' \
  'paired=-[generate paired reads]:bool:(t f)' \
  'length=-[reads should be this long]:int:' \
  'minlen=-[min length of MDA contig]:int:' \
  'maxlen=-[max length of MDA contig]:int:' \
  'cycles=-[number of MDA cycles]:int:' \
  'initialratio=-[fraction of genome initially replicated]:float:' \
  'ratio=-[fraction of genome replicated per cycle]:float:' \
  'refout=-[write MDA genome to this file]:file:_files' \
  'perfect=-[fraction of error-free reads]:float:' \
  'amp=-[amp flag sent to RandomReads]:int:' \
  'build=-[index MDA genome in this location]:int:' \
  'prefix=-[generated reads start with this prefix]:prefix:' \
  'overwrite=-[overwrite existing files]:bool:(t f)' \
  '*:file:_files' && ret=0

return ret
