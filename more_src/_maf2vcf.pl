#compdef maf2vcf.pl
# Documentation: https://github.com/mskcc/vcf2maf
# convert a MAF into a multi-sample VCF (and optional per-TN VCFs)

local ret=1

_arguments -s -S \
  '--help[show help]' \
  '--man[print detailed manual]' \
  '--input-maf=[input MAF file]:file:_files' \
  '--output-dir=[output directory for per-TN VCFs]:dir:_files -/' \
  '--output-vcf=[output multi-sample VCF]:file:_files' \
  '--ref-fasta=[reference FASTA file]:file:_files' \
  '--per-tn-vcfs[also generate VCFs per TN-pair]' \
  '--tum-depth-col=[column name for tumor read depth]:col:' \
  '--tum-rad-col=[column name for tumor reference allele depth]:col:' \
  '--tum-vad-col=[column name for tumor variant allele depth]:col:' \
  '--nrm-depth-col=[column name for normal read depth]:col:' \
  '--nrm-rad-col=[column name for normal reference allele depth]:col:' \
  '--nrm-vad-col=[column name for normal variant allele depth]:col:' && ret=0

return ret
