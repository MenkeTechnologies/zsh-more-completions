#compdef taxonomy.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/taxonomy.sh
# BBTools: print taxonomy for sequence names

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[file of named sequences or names]:file:_files' \
  'out=-[output file]:file:_files' \
  'tree=-[specify a TaxTree file]:file:_files' \
  'gi=-[specify a gitable file]:file:_files' \
  'accession=-[NCBI accession to taxid files]:file:_files' \
  'level=-[print only this taxonomic level]:level:' \
  'minlevel=-[do not print levels below this]:level:' \
  'maxlevel=-[do not print levels above this]:level:' \
  'silva=-[parse headers using Silva syntax]:bool:(t f)' \
  'taxpath=-[path to taxonomy files]:path:_files -/' \
  '*:file:_files' && ret=0

return ret
