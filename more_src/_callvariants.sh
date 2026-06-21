#compdef callvariants.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/bb-tools-user-guide/
# CallVariants: call variants directly from mapped reads in SAM/BAM format

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input files (comma-delimited or single)]:files:_files' \
  'list=[text file with one input file per line]:file:_files' \
  'out=[output variant list in var format]:file:_files' \
  'vcf=[output variant list in vcf format]:file:_files' \
  'outgff=[output variant list in gff format]:file:_files' \
  'ref=[reference fasta file]:file:_files' \
  'vcfin=[force calls at specified locations]:file:_files' \
  'shist=[output for variant score histogram]:file:_files' \
  'zhist=[output for zygosity histogram]:file:_files' \
  'qhist=[output for variant base quality histogram]:file:_files' \
  'overwrite=[abort rather than overwrite files]:bool:(t f)' \
  'extended=[print additional variant statistics columns]:bool:(t f)' \
  'sample=[comma-delimited list of sample names]:names:' \
  'multisample=[treat multiple files as individual samples]:bool:(t f)' \
  'vcf0=[per-sample outputs (multisample mode only)]:file:_files' \
  'bgzip=[use bgzip for gzip compression]:bool:(t f)' \
  'samstreamer=[load reads multithreaded for speed]:bool:(t f)' \
  'streamermf=[allow multiple sam files read simultaneously]:bool:(t f)' \
  'prefilter=[use Bloom filter to exclude rare variants]:bool:(t f)' \
  'coverage=[calculate coverage for better calling]:bool:(t f)' \
  'ploidy=[set organism ploidy]:n:' \
  'rarity=[penalize variants below this allele fraction]:value:' \
  'covpenalty=[penalty for low-coverage variants]:value:' \
  'useidentity=[include average read identity in score]:bool:(t f)' \
  'usepairing=[include pairing rate in score]:bool:(t f)' \
  'usebias=[include strand bias in score]:bool:(t f)' \
  'useedist=[include read-end distance in score]:bool:(t f)' \
  'homopolymer=[penalize substitutions matching adjacent bases]:bool:(t f)' \
  'nscan=[consider distance from contig ends in strand bias]:bool:(t f)' \
  'callsub=[call substitutions]:bool:(t f)' \
  'calldel=[call deletions]:bool:(t f)' \
  'callins=[call insertions]:bool:(t f)' \
  'calljunct=[call junctions]:bool:(t f)' \
  'nopassdot=[use . as genotype for failing variations]:bool:(t f)' \
  '32bit=[allow coverage tracking over depth 65535]:bool:(t f)' \
  'atomic=[increase multithreaded speed]:bool:(t f)' \
  'strandedcov=[track per-strand ref coverage]:bool:(t f)' \
  'border=[trim this many bases on both ends of reads]:n:' \
  'qtrim=[quality-trim reads on specified end]:mode:(rl f r l)' \
  'trimq=[quality-trim bases below this score]:q:' \
  'realign=[realign reads with multiple mismatches]:bool:(t f)' \
  'unclip=[convert clip symbols to matches/substitutions]:bool:(t f)' \
  'repadding=[pad alignment by this much on each end]:n:' \
  'rerows=[maximum rows for realignment]:n:' \
  'recols=[maximum reference segment length for alignment]:n:' \
  'msa=[select the aligner]:aligner:' \
  'minpos=[ignore alignments not overlapping this range]:pos:' \
  'maxpos=[ignore alignments not overlapping this range]:pos:' \
  'minreadmapq=[ignore alignments with lower mapq]:q:' \
  'contigs=[comma-delimited list of contig names to include]:names:' \
  'secondary=[include secondary alignments]:bool:(t f)' \
  'supplimentary=[include supplementary alignments]:bool:(t f)' \
  'duplicate=[include reads flagged as duplicates]:bool:(t f)' \
  'invert=[invert sam filters]:bool:(t f)' \
  'minreads=[ignore variants seen in fewer reads]:n:' \
  'maxreads=[ignore variants seen in more reads]:n:' \
  'mincov=[ignore variants in lower-coverage locations]:n:' \
  'maxcov=[ignore variants in higher-coverage locations]:n:' \
  'minqualitymax=[ignore variants with lower max base quality]:q:' \
  'minedistmax=[ignore variants with lower max end distance]:n:' \
  'minmapqmax=[ignore variants with lower max mapq]:q:' \
  'minidmax=[ignore variants with lower max read identity]:value:' \
  'minpairingrate=[ignore variants with lower pairing rate]:value:' \
  'minstrandratio=[ignore variants with lower strand ratio]:value:' \
  'minquality=[ignore variants with lower avg base quality]:q:' \
  'minedist=[ignore variants with lower avg end distance]:n:' \
  'minavgmapq=[ignore variants with lower average mapq]:q:' \
  'minallelefraction=[ignore variants with lower allele fraction]:value:' \
  'minid=[ignore variants with lower average read identity]:value:' \
  'minscore=[ignore variants with lower Phred-scaled score]:value:' \
  'clearfilters=[clear all filters]:bool:(t f)' \
  'minvarcopies=[determines genotype calling for minor alleles]:n:' \
  '*:file:_files' && ret=0

return ret
