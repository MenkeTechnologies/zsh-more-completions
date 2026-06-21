#compdef clumpify.sh
# Documentation: https://github.com/BioInfoTools/BBMap/blob/master/sh/clumpify.sh
# reorder reads to maximize gzip compression, dedupe and error-correct (BBTools)

local ret=1

_arguments -s -S \
  '*-h[show help]' \
  '*in=-[input file]:file:_files' \
  '*in2=-[input for read 2 of twin paired files]:file:_files' \
  '*out=-[output file]:file:_files' \
  '*out2=-[output for read 2 of twin paired files]:file:_files' \
  '*groups=-[intermediate files to save memory]:n:' \
  '*lowcomplexity=-[conservatively estimate memory for compressed libraries]:bool:(t f)' \
  '*rcomp=-[give read clumps same orientation to increase compression]:bool:(t f)' \
  '*overwrite=-[abort rather than overwrite existing files]:bool:(t f)' \
  '*qin=-[input quality encoding]:enc:(auto 33 64)' \
  '*qout=-[output quality encoding]:enc:(auto 33 64)' \
  '*fastawrap=-[fasta line length]:n:' \
  '*ziplevel=-[gzip compression level]:level:' \
  '*blocksize=-[size of blocks for pigz in kilobytes]:kb:' \
  '*reorder=-[reorder clumps for additional compression]:bool:(t f)' \
  '*quantize=-[bin quality scores for increased compression]:bool:(t f)' \
  '*dedupe=-[remove duplicate reads]:bool:(t f)' \
  '*markduplicates=-[mark duplicates instead of removing]:bool:(t f)' \
  '*ecc=-[error-correct reads]:bool:(t f)' \
  '*passes=-[number of error-correction passes]:n:' \
  '*:input:_files' && ret=0

return ret
