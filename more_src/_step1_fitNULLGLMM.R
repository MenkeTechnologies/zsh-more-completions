#compdef step1_fitNULLGLMM.R
# Documentation: https://saigegit.github.io/SAIGE-doc/docs/single_step1.html
# SAIGE step 1: fit the null GLMM and estimate variance ratios

local ret=1

_arguments -s -S \
  '--plinkFile=[PLINK file prefix for GRM]:prefix:_files' \
  '--phenoFile=[phenotype file]:file:_files' \
  '--phenoCol=[phenotype column name]:name' \
  '--covarColList=[comma-separated covariate columns]:names' \
  '--qCovarColList=[comma-separated quantitative covariate columns]:names' \
  '--sampleIDColinphenoFile=[sample ID column in phenotype file]:name' \
  '--traitType=[trait type quantitative or binary]:type:(quantitative binary)' \
  '--outputPrefix=[output prefix]:prefix:_files' \
  '--nThreads=[number of threads]:n' \
  '--IsOverwriteVarianceRatioFile=[overwrite variance ratio file]:bool:(TRUE FALSE)' \
  '--useSparseGRMtoFitNULL=[use sparse GRM to fit null]:bool:(TRUE FALSE)' \
  '--sparseGRMFile=[sparse GRM file]:file:_files' \
  '--sparseGRMSampleIDFile=[sparse GRM sample ID file]:file:_files' \
  '--skipVarianceRatioEstimation=[skip variance ratio estimation]:bool:(TRUE FALSE)' \
  '--invNormalize=[inverse-normalize the phenotype]:bool:(TRUE FALSE)' \
  '--isCovariateOffset=[treat covariates as offset]:bool:(TRUE FALSE)' \
  '*:file:_files' && ret=0

return ret
