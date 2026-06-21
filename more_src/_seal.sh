#compdef seal.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/bb-tools-user-guide/
# Seal: bin reads by kmer-matching against multiple reference sequences

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[main input file (fasta or fastq)]:file:_files' \
  'in2=[input for 2nd read of pairs in a different file]:file:_files' \
  'ref=[comma-delimited reference files or directories]:files:_files' \
  'literal=[comma-delimited literal reference sequences]:seqs:' \
  'touppercase=[change all bases to upper-case]:bool:(t f)' \
  'interleaved=[override interleaved autodetection]:mode:(t f)' \
  'qin=[input quality offset]:offset:(auto 33 64)' \
  'reads=[quit after this many reads or pairs]:n:' \
  'copyundefined=[process non-AGCT IUPAC reference bases]:bool:(t f)' \
  'out=[write matching reads here]:file:_files' \
  'out2=[write 2nd read of matching pairs here]:file:_files' \
  'outu=[write non-matching reads here]:file:_files' \
  'outu2=[write 2nd read of non-matching pairs here]:file:_files' \
  'pattern=[write reads to separate streams per reference]:pattern:' \
  'stats=[write statistics about detected contaminants]:file:_files' \
  'refstats=[write per-reference-file statistics]:file:_files' \
  'rpkm=[write RPKM for each reference sequence]:file:_files' \
  'dump=[dump kmer tables to file in fasta format]:file:_files' \
  'nzo=[only write stats for refs with nonzero hits]:bool:(t f)' \
  'overwrite=[grant permission to overwrite files]:bool:(t f)' \
  'showspeed=[suppress display of processing speed]:bool:(t f)' \
  'ziplevel=[compression level 1-9]:level:(1 2 3 4 5 6 7 8 9)' \
  'fastawrap=[length of lines in fasta output]:n:' \
  'qout=[output quality offset]:offset:(auto 33 64)' \
  'statscolumns=[number of columns for stats output]:n:(3 5)' \
  'rename=[rename reads to indicate matched sequences]:bool:(t f)' \
  'refnames=[use reference file names rather than scaffold IDs]:bool:(t f)' \
  'trd=[truncate read and ref names at first whitespace]:bool:(t f)' \
  'ordered=[output reads in same order as input]:bool:(t f)' \
  'kpt=[paired reads assigned to same ref sequence]:bool:(t f)' \
  'k=[kmer length used for finding contaminants]:k:' \
  'rcomp=[look for reverse-complements of kmers]:bool:(t f)' \
  'maskmiddle=[treat middle base of kmer as wildcard]:bool:(t f)' \
  'minkmerhits=[minimum kmer hits required for match]:n:' \
  'minkmerfraction=[minimum fraction of kmers hitting reference]:value:' \
  'hammingdistance=[maximum Hamming distance for ref kmers]:n:' \
  'qhdist=[Hamming distance for query kmers]:n:' \
  'editdistance=[maximum edit distance from ref kmers]:n:' \
  'forbidn=[forbid matching of read kmers containing N]:bool:(t f)' \
  'match=[determines when to quit looking for kmer matches]:mode:' \
  'ambiguous=[behavior on ambiguously-mapped reads]:mode:' \
  'clearzone=[threshold for ambiguity]:n:' \
  'ecco=[error-correct overlapping paired reads]:bool:(t f)' \
  'processcontainedref=[require ref fully contained by input]:bool:(t f)' \
  'storerefbases=[store reference bases for containment]:bool:(t f)' \
  'tax=[output destination for taxonomy information]:file:_files' \
  'taxtree=[serialized TaxTree file path]:file:_files' \
  'gi=[serialized GiTable file path]:file:_files' \
  'mincount=[only display taxa with this minimum hits]:n:' \
  'maxnodes=[display at most this many top hits]:n:' \
  'minlevel=[do not display nodes below this level]:level:' \
  'maxlevel=[do not display nodes above this level]:level:' \
  'threads=[set number of threads to use]:threads:' \
  'prealloc=[preallocate memory in table]:bool:(t f)' \
  'monitor=[kill process if CPU usage drops to zero]:bool:(t f)' \
  'rskip=[skip reference kmers to reduce memory]:n:' \
  'qskip=[skip query kmers to increase speed]:n:' \
  'speed=[ignore this fraction of kmer space]:n:' \
  'qtrim=[trim read ends to remove low-quality bases]:mode:(rl f r l)' \
  'trimq=[quality threshold for trimming]:q:' \
  'minlength=[minimum read length after trimming]:n:' \
  'maxlength=[maximum read length after trimming]:n:' \
  'minavgquality=[minimum average quality threshold]:q:' \
  'maqb=[calculate average quality from initial bases]:n:' \
  'maxns=[maximum N bases allowed after trimming]:n:' \
  'forcetrimleft=[trim bases left of this position]:n:' \
  'forcetrimright=[trim bases right of this position]:n:' \
  'forcetrimright2=[trim this many bases on right end]:n:' \
  'forcetrimmod=[right-trim length to be modulo this number]:n:' \
  'restrictleft=[only look for matches in leftmost bases]:n:' \
  'restrictright=[only look for matches in rightmost bases]:n:' \
  '*:file:_files' && ret=0

return ret
