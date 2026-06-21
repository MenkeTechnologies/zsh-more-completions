#compdef maf2maf.pl
# Documentation: https://github.com/mskcc/vcf2maf
# re-annotate a MAF by running its variants through vcf2maf

local ret=1

_arguments -s -S \
  '--help[show help]' \
  '--man[print detailed manual]' \
  '--input-maf=[input MAF or MAF-like file]:file:_files' \
  '--output-maf=[output MAF file]:file:_files' \
  '--tmp-dir=[folder to retain intermediate VCFs]:dir:_files -/' \
  '--tum-depth-col=[column name for tumor total depth]:col:' \
  '--tum-rad-col=[column name for tumor reference allele depth]:col:' \
  '--tum-vad-col=[column name for tumor variant allele depth]:col:' \
  '--nrm-depth-col=[column name for normal total depth]:col:' \
  '--nrm-rad-col=[column name for normal reference allele depth]:col:' \
  '--nrm-vad-col=[column name for normal variant allele depth]:col:' \
  '--custom-enst=[comma-delimited custom ENST IDs]:ids:' \
  '--vep-path=[folder containing the vep script]:dir:_files -/' \
  '--vep-data=[VEP base cache/plugin directory]:dir:_files -/' \
  '--vep-forks=[number of forked VEP processes]:n:' \
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
  '--remap-chain=[chain file for remapping to other assembly]:file:_files' && ret=0

return ret
