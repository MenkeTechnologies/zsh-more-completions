#compdef mutate.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/mutate.sh
# BBTools: create mutant version of a genome with a VCF

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[input genome]:file:_files' \
  'out=-[output mutant genome]:file:_files' \
  'vcf=-[output VCF of variations added]:file:_files' \
  'overwrite=-[overwrite existing files]:bool:(t f)' \
  'ziplevel=-[compression level 1-9]:level:' \
  'subrate=-[substitution rate 0 to 1]:float:' \
  'indelrate=-[indel rate 0 to 1]:float:' \
  'maxindel=-[max indel length]:int:' \
  'indelspacing=-[min distance between indels]:int:' \
  'id=-[target identity 0 to 1]:float:' \
  'fraction=-[genome fraction 0 to 1]:float:' \
  'period=-[place one mutation every X bases]:int:' \
  'prefix=-[rename contigs with this prefix]:prefix:' \
  'amino=-[treat input as amino acid sequence]:bool:(t f)' \
  'ploidy=-[set the ploidy]:int:' \
  'hetrate=-[fraction of heterozygous mutations]:float:' \
  'nohomopolymers=-[prevent indels in homopolymers]:bool:(t f)' \
  '*:file:_files' && ret=0

return ret
