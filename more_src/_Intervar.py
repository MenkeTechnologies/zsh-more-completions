#compdef Intervar.py
# Documentation: https://github.com/WGLab/InterVar
# ACMG/AMP clinical variant interpretation

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version]' \
  '--config=[load configuration file]:ini:_files -g "*.ini"' \
  '(-i --input)'{-i,--input=}'[input file of variants]:file:_files' \
  '--input_type=[input file type]:type:(AVinput VCF)' \
  '(-o --output)'{-o,--output=}'[output file prefix]:prefix:' \
  '(-b --buildver)'{-b,--buildver=}'[reference genome version]:build:(hg18 hg19)' \
  '(-t --database_intervar)'{-t,--database_intervar=}'[InterVar database directory]:dir:_files -/' \
  '(-s --evidence_file)'{-s,--evidence_file=}'[user-specified evidence file]:file:_files' \
  '--table_annovar=[path to table_annovar.pl]:file:_files' \
  '--convert2annovar=[path to convert2annovar.pl]:file:_files' \
  '--annotate_variation=[path to annotate_variation.pl]:file:_files' \
  '(-d --database_locat)'{-d,--database_locat=}'[ANNOVAR database directory]:dir:_files -/' && ret=0

return ret
