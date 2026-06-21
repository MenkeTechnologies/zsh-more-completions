#compdef step2_SPAtests.R
# Documentation: https://saigegit.github.io/SAIGE-doc/docs/single_step2.html
# SAIGE step 2: single-variant association tests with SPA

local ret=1

_arguments -s -S \
  '--bgenFile=[BGEN genotype file]:file:_files' \
  '--bgenFileIndex=[BGEN index file]:file:_files' \
  '--vcfFile=[VCF genotype file]:file:_files' \
  '--vcfFileIndex=[VCF index file]:file:_files' \
  '--vcfField=[VCF field DS or GT]:field:(DS GT)' \
  '--bedFile=[PLINK bed file]:file:_files' \
  '--bimFile=[PLINK bim file]:file:_files' \
  '--famFile=[PLINK fam file]:file:_files' \
  '--sampleFile=[sample file]:file:_files' \
  '--GMMATmodelFile=[null model file from step 1]:file:_files' \
  '--varianceRatioFile=[variance ratio file from step 1]:file:_files' \
  '--SAIGEOutputFile=[output file]:file:_files' \
  '--sparseGRMFile=[sparse GRM file]:file:_files' \
  '--sparseGRMSampleIDFile=[sparse GRM sample ID file]:file:_files' \
  '--minMAF=[minimum minor allele frequency]:maf' \
  '--minMAC=[minimum minor allele count]:mac' \
  '--chrom=[chromosome]:chr' \
  '--LOCO=[leave-one-chromosome-out]:bool:(TRUE FALSE)' \
  '--AlleleOrder=[allele order alt-first or ref-first]:order:(alt-first ref-first)' \
  '--is_output_moreDetails=[output additional columns]:bool:(TRUE FALSE)' \
  '--is_Firth_beta=[estimate effect size with Firth]:bool:(TRUE FALSE)' \
  '--pCutoffforFirth=[p-value cutoff for Firth]:p' \
  '--is_fastTest=[use fast test]:bool:(TRUE FALSE)' \
  '--condition=[conditioning markers]:markers' \
  '--idstoIncludeFile=[file of marker IDs to include]:file:_files' \
  '--rangestoIncludeFile=[file of ranges to include]:file:_files' \
  '--markers_per_chunk=[markers per chunk]:n' \
  '--impute_method=[imputation method]:method' \
  '--is_overwrite_output=[overwrite output file]:bool:(TRUE FALSE)' \
  '--is_imputed_data=[input is imputed data]:bool:(TRUE FALSE)' \
  '*:file:_files' && ret=0

return ret
