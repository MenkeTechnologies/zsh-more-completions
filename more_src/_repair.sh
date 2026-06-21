#compdef repair.sh
# Documentation: https://github.com/BioInfoTools/BBMap/blob/master/sh/repair.sh
# re-pair disordered or corrupted paired-end reads by read name (BBTools)

local ret=1

_arguments -s -S \
  '*-h[show help]' \
  '*in=-[input file]:file:_files' \
  '*in2=-[second read pair in a separate file]:file:_files' \
  '*out=-[output file]:file:_files' \
  '*out2=-[write second read pair to a different file]:file:_files' \
  '*outs=-[write singleton reads here]:file:_files' \
  '*overwrite=-[abort rather than overwrite existing file]:bool:(t f)' \
  '*showspeed=-[display processing speed]:bool:(t f)' \
  '*ziplevel=-[gzip compression level]:level:(1 2 3 4 5 6 7 8 9)' \
  '*fint=-[fix corrupted interleaved files using read names]:bool:(t f)' \
  '*repair=-[fix corrupted paired reads using read names]:bool:(t f)' \
  '*ain=-[allow identical pair names instead of requiring /1 and /2]:bool:(t f)' \
  '*:input:_files' && ret=0

return ret
