#compdef EDTA.pl
# Documentation: https://github.com/oushujun/EDTA/blob/master/EDTA.pl
# EDTA: Extensive de-novo TE Annotator pipeline driver

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '--genome=[input genome fasta file]:file:_files' \
  '--species=[species for known TE library]:species:(Rice Maize others)' \
  '--step=[pipeline step to run]:step:(all filter final anno)' \
  '--overwrite=[overwrite existing results (0 or 1)]:n:(0 1)' \
  '--curatedlib=[curated TE library fasta file]:file:_files' \
  '--rmlib=[custom RepeatModeler library fasta file]:file:_files' \
  '--cds=[coding sequence fasta to purge from library]:file:_files' \
  '--protlib=[plant protein library to remove gene-related sequences]:file:_files' \
  '--sensitive=[run RepeatModeler for sensitive annotation (0 or 1)]:n:(0 1)' \
  '--anno=[perform whole-genome TE annotation (0 or 1)]:n:(0 1)' \
  '--rmout=[custom RepeatMasker .out file]:file:_files' \
  '--maxdiv=[maximum divergence for whole-genome annotation]:n:' \
  '--evaluate=[evaluate annotation consistency (0 or 1)]:n:(0 1)' \
  '--exclude=[bed file of regions to exclude]:file:_files' \
  '--force=[force annotation even with errors (0 or 1)]:n:(0 1)' \
  '--u=[neutral mutation rate per bp per year]:rate:' \
  '--repeatmodeler=[path to RepeatModeler]:path:_files -/' \
  '--repeatmasker=[path to RepeatMasker]:path:_files -/' \
  '--tesorter=[path to TEsorter]:path:_files -/' \
  '--blast=[path to BLAST+]:path:_files -/' \
  '--annosine=[path to AnnoSINE]:path:_files -/' \
  '--tirlearner=[path to TIR-Learner]:path:_files -/' \
  '--ltrretriever=[path to LTR_retriever]:path:_files -/' \
  {--threads,-t}'=[number of threads]:threads:' \
  '--wholeelement=[annotate whole TE elements (0 or 1)]:n:(0 1)' \
  '--check_dependencies[check dependencies and exit]' \
  '--debug=[debug level]:n:' && ret=0

return ret
