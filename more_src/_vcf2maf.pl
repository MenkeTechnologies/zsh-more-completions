#compdef vcf2maf.pl
# Documentation: https://github.com/mskcc/vcf2maf
# convert a VCF into a MAF, annotating variants via VEP

local ret=1

_arguments -s -S \
  '--help[show help]' \
  '--man[print detailed manual]' \
  '--verbose[log progress to STDERR]' \
  '--input-vcf=[input VCF file]:file:_files -g "*.vcf *.vcf.gz"' \
  '--output-maf=[output MAF file]:file:_files' \
  '--tmp-dir=[folder to retain intermediate VCFs]:dir:_files -/' \
  '--tumor-id=[Tumor_Sample_Barcode to report]:id:' \
  '--normal-id=[Matched_Norm_Sample_Barcode to report]:id:' \
  '--vcf-tumor-id=[tumor sample ID in VCF genotype columns]:id:' \
  '--vcf-normal-id=[normal sample ID in VCF genotype columns]:id:' \
  '--custom-enst=[comma-delimited custom ENST IDs]:ids:' \
  '--vep-path=[folder containing the vep script]:dir:_files -/' \
  '--vep-data=[VEP base cache/plugin directory]:dir:_files -/' \
  '--vep-forks=[number of forked VEP processes]:n:' \
  '--vep-custom=[string to pass into VEP --custom]:str:' \
  '--vep-config=[VEP config file]:file:_files' \
  '--vep-plugins=[plugin instructions for VEP --plugin]:str:' \
  '--vep-overwrite[allow VEP to overwrite annotated output]' \
  '--vep-stats[allow VEP to generate statistics]' \
  '--buffer-size=[variants VEP loads at a time]:n:' \
  '--any-allele[allow mismatched alleles for co-located variants]' \
  '--inhibit-vep[skip running VEP, extract annotation if present]' \
  '--online[use remote Ensembl database instead of local cache]' \
  '--ref-fasta=[reference FASTA file]:file:_files' \
  '--species=[Ensembl-friendly species name]:species:' \
  '--ncbi-build=[NCBI reference assembly]:build:' \
  '--cache-version=[offline cache version for VEP]:version:' \
  '--maf-center=[variant calling center to report]:center:' \
  '--retain-info=[INFO fields to retain as MAF columns]:fields:' \
  '--retain-fmt=[FORMAT fields to retain as MAF columns]:fields:' \
  '--retain-ann=[VEP annotations to retain as MAF columns]:fields:' \
  '--min-hom-vaf=[min allele fraction for homozygous]:n:' \
  '--remap-chain=[chain file for remapping to other assembly]:file:_files' \
  '--max-subpop-af=[threshold for flagging common subpop variants]:n:' \
  '--samtools-exec=[path to samtools executable]:file:_files' \
  '--tabix-exec=[path to tabix executable]:file:_files' \
  '--liftover-exec=[path to liftover executable]:file:_files' && ret=0

return ret
