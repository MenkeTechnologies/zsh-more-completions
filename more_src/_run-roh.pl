#compdef run-roh.pl
# Documentation: https://raw.githubusercontent.com/samtools/bcftools/develop/misc/run-roh.pl
# Convenience wrapper around bcftools roh for multiple VCF/BCF files

local ret=1

_arguments -s -S \
  '(-h -? --help)'{-h,--help}'[show help]' \
  '(-a --af-annots)'{-a,--af-annots}'[allele frequency annotations]:file:_files' \
  '(-i --indir)'{-i,--indir}'[input directory with VCF files]:dir:_files -/' \
  '--include[select sites for which the expression is true]:expr:' \
  '--exclude[exclude sites for which the expression is true]:expr:' \
  '(-l --min-length)'{-l,--min-length}'[filter input regions shorter than this]:num:' \
  '(-m --genmap)'{-m,--genmap}'[directory with genetic map in IMPUTE2 format]:dir:_files -/' \
  '(-M --rec-rate)'{-M,--rec-rate}'[constant recombination rate per bp]:float:' \
  '(-n --min-markers)'{-n,--min-markers}'[filter input regions with fewer markers]:num:' \
  '(-o --outdir)'{-o,--outdir}'[output directory]:dir:_files -/' \
  '(-q --min-qual)'{-q,--min-qual}'[filter input regions with quality smaller than this]:num:' \
  '--roh-args[extra arguments to pass to bcftools roh]:args:' \
  '(-s --silent)'{-s,--silent}'[quiet output, do not print commands]' && ret=0

return ret
