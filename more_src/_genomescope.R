#compdef genomescope.R
# Documentation: https://github.com/tbenavi1/genomescope2.0
# GenomeScope 2.0: reference-free genome profiling from k-mer histograms

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-v --version)'{-v,--version}'[print the version and exit]' \
  '(-i --input)'{-i+,--input=}'[input histogram file]:file:_files' \
  '(-o --output)'{-o+,--output=}'[output directory name]:dir:_files -/' \
  '(-p --ploidy)'{-p+,--ploidy=}'[ploidy for model to use]:ploidy:(1 2 3 4 5 6)' \
  '(-k --kmer_length)'{-k+,--kmer_length=}'[kmer length used to calculate kmer spectra]:length' \
  '(-n --name_prefix)'{-n+,--name_prefix=}'[name prefix for output files]:prefix' \
  '(-l --lambda)'{-l+,--lambda=}'[initial kmercov estimate for model]:lambda' \
  '(-m --max_kmercov)'{-m+,--max_kmercov=}'[maximum kmer coverage threshold]:cov' \
  '--verbose[print messages during execution]' \
  '--no_unique_sequence[turn off unique sequence line in plots]' \
  '--json_report[write a JSON format report file]' \
  '(-t --topology)'{-t+,--topology=}'[topology for model to use]:topology' \
  '--initial_repetitiveness=[initial value for repetitiveness]:value' \
  '--initial_heterozygosities=[initial values for heterozygosity rates]:values' \
  '--transform_exp=[exponent when fitting a transformed model]:value' \
  '--testing[create testing.tsv file with model parameters]' \
  '--true_params=[true simulated parameters for testing mode]:params' \
  '--trace_flag[print iteration progress]' \
  '--num_rounds=[number of optimization rounds]:rounds' \
  '--fitted_hist[generate a fitted histogram]' \
  '--start_shift=[coverage shifts to exclude between fitting rounds]:value' \
  '--typical_error=[typical level of sequencing error]:value' && ret=0

return ret
