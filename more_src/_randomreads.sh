#compdef randomreads.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/bb-tools-user-guide/
# RandomReads: generate synthetic reads from a reference with controllable errors

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'out=[output file for generated reads]:file:_files' \
  'ref=[reference genome file]:file:_files' \
  'build=[unique build ID for indexed references]:n:' \
  'midpad=[space between scaffolds in packed index]:n:' \
  'reads=[number of reads or pairs to generate]:n:' \
  'coverage=[target coverage depth based on genome size]:n:' \
  'overwrite=[allow overwriting existing files]:bool:(t f)' \
  'replacenoref=[replace Ns in reference with random letters]:bool:(t f)' \
  'simplenames=[read names clearly indicate genomic origin]:bool:(t f)' \
  'illuminanames=[use matching names for paired reads]:bool:(t f)' \
  'renamebyinsert=[insert the insert size into read names]:bool:(t f)' \
  'addpairnum=[add 1: and 2: to read names]:bool:(t f)' \
  'addslash=[add /1 and /2 to read names]:bool:(t f)' \
  'spaceslash=[add space before slash read pair number]:bool:(t f)' \
  'prefix=[prefix for generated reads]:name:' \
  'seed=[random number generator seed value]:n:' \
  'minlength=[minimum read length]:n:' \
  'maxlength=[maximum read length]:n:' \
  'gaussianlength=[use Gaussian length distribution]:bool:(t f)' \
  'midlength=[peak point of Gaussian curve]:n:' \
  'readlengthsd=[standard deviation of Gaussian curve]:n:' \
  'paired=[enable paired-end read generation]:bool:(t f)' \
  'mininsert=[minimum insert length]:n:' \
  'maxinsert=[maximum insert length]:n:' \
  'triangle=[triangular insert size distribution]:bool:(t f)' \
  'flat=[roughly flat insert size distribution]:bool:(t f)' \
  'superflat=[perfectly flat insert size distribution]:bool:(t f)' \
  'gaussian=[bell-shaped insert size distribution]:bool:(t f)' \
  'samestrand=[generate paired reads on same strand]:bool:(t f)' \
  'snprate=[probability of adding SNPs to reads]:value:' \
  'insrate=[probability of adding insertions]:value:' \
  'delrate=[probability of adding deletions]:value:' \
  'subrate=[probability of adding substitutions]:value:' \
  'nrate=[probability of adding no-calls]:value:' \
  'maxsnps=[maximum SNPs per read]:n:' \
  'maxinss=[maximum insertions per read]:n:' \
  'maxdels=[maximum deletions per read]:n:' \
  'maxsubs=[maximum substitutions per read]:n:' \
  'maxns=[maximum N blocks per read]:n:' \
  'maxinslen=[maximum insertion length]:n:' \
  'maxdellen=[maximum deletion length]:n:' \
  'maxsublen=[maximum substitution length]:n:' \
  'maxnlen=[maximum N block length]:n:' \
  'mininslen=[minimum insertion length]:n:' \
  'mindellen=[minimum deletion length]:n:' \
  'minsublen=[minimum substitution length]:n:' \
  'minnlen=[minimum N block length]:n:' \
  'maxq=[upper bound of quality values]:q:' \
  'midq=[approximate average quality value]:q:' \
  'minq=[lower bound of quality values]:q:' \
  'q=[set maxq, midq, and minq to same value]:q:' \
  'adderrors=[add substitution errors based on quality]:bool:(t f)' \
  'qv=[vary base quality to simulate tile effects]:value:' \
  'pacbio=[use PacBio error model instead of Illumina]:bool:(t f)' \
  'pbmin=[minimum rate of PacBio errors]:value:' \
  'pbmax=[maximum rate of PacBio errors]:value:' \
  'overlap=[minimum overlap of reads with scaffold end]:n:' \
  'banns=[do not generate reads over reference Ns]:bool:(t f)' \
  'metagenome=[assign scaffolds random exponential coverage]:bool:(t f)' \
  'randomscaffold=[choose random scaffolds ignoring length]:bool:(t f)' \
  'amp=[simulate amplified MDA single-cell data]:n:' \
  'pbadapter=[add adapter sequence using literal string]:seq:' \
  'fragadapter=[add adapter to short-insert paired reads]:seq:' \
  'fragadapter2=[adapter sequence for read 2]:seq:' \
  '*:file:_files' && ret=0

return ret
