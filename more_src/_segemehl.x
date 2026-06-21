#compdef segemehl.x
# Documentation: https://manpages.debian.org/testing/segemehl/segemehl.1.en.html
# Map short sequencer reads to reference genomes

local ret=1

_arguments -s -S \
  '(-d --database)'{-d,--database}'[list of path/filename(s) of fasta database sequence(s)]:database:_files' \
  '(-q --query)'{-q,--query}'[path/filename of query sequences]:query:_files' \
  '(-p --mate)'{-p,--mate}'[path/filename of mate pair sequences]:mate:_files' \
  '(-i --index)'{-i,--index}'[path/filename of db index]:index:_files' \
  '(-j --index2)'{-j,--index2}'[path/filename of second db index]:index2:_files' \
  '(-x --generate)'{-x,--generate}'[generate db index and store to disk]:file:_files' \
  '(-y --generate2)'{-y,--generate2}'[generate second db index and store to disk]:file:_files' \
  '(-G --readgroupfile)'{-G,--readgroupfile}'[filename to read @RG header]:file:_files' \
  '(-g --readgroupid)'{-g,--readgroupid}'[read group id]:string:' \
  '(-t --threads)'{-t,--threads}'[start <n> threads]:n:' \
  '(-o --outfile)'{-o,--outfile}'[outputfile]:string:_files' \
  '(-b --bamabafixoida)'{-b,--bamabafixoida}'[generate a bam output]' \
  '(-u --nomatchfilename)'{-u,--nomatchfilename}'[filename for unmatched reads]:file:_files' \
  '(-e --briefcigar)'{-e,--briefcigar}'[brief cigar string (M vs X and =)]' \
  '(-s --progressbar)'{-s,--progressbar}'[show a progress bar]' \
  '(-B --filebins)'{-B,--filebins}'[file bins with basename <string> for easier data handling]:string:' \
  '(-V --MEOP)'{-V,--MEOP}'[output MEOP field for easier variance calling in SAM]' \
  '(-F --bisulfite)'{-F,--bisulfite}'[bisulfite aln with methylC-seq (=1) or bs-seq (=2)]:n:' \
  '(-S --splits)'{-S,--splits}'[detect split/spliced reads]::basename:' \
  '(-A --accuracy)'{-A,--accuracy}'[min percentage of matches per read in semi-global alignment]:n:' \
  '(-D --differences)'{-D,--differences}'[search seeds initially with <n> differences]:n:' \
  '(-E --evalue)'{-E,--evalue}'[max evalue]:double:' \
  '(-H --hitstrategy)'{-H,--hitstrategy}'[report only best scoring hits (=1) or all (=0)]:n:' \
  '(-m --minsize)'{-m,--minsize}'[minimum length of queries]:n:' \
  '(-Z --minfraglen)'{-Z,--minfraglen}'[min length of a spliced fragment]:n:' \
  '(-W --minsplicecover)'{-W,--minsplicecover}'[min coverage for spliced transcripts]:n:' \
  '(-U --minfragscore)'{-U,--minfragscore}'[min score of a spliced fragment]:n:' \
  '(-l --splicescorescale)'{-l,--splicescorescale}'[report spliced alignment with score s only if <f>*s exceeds next best]:f:' \
  '(-w --maxsplitevalue)'{-w,--maxsplitevalue}'[max evalue for splits]:double:' \
  '(-X --dropoff)'{-X,--dropoff}'[dropoff parameter for extension]:n:' \
  '(-J --jump)'{-J,--jump}'[search seeds with jump size <n> (0=automatic)]:n:' \
  '(-O --order)'{-O,--order}'[sorts the output by chromosome and position]' \
  '(-I --maxpairinsertsize)'{-I,--maxpairinsertsize}'[maximum size of the inserts (paired end)]:n:' \
  '(-M --maxinterval)'{-M,--maxinterval}'[maximum width of a suffix array interval]:n:' \
  '(-c --checkidx)'{-c,--checkidx}'[check index]' \
  '(-n --extensionpenalty)'{-n,--extensionpenalty}'[penalty for a mismatch during extension]:n:' \
  '(-r --maxout)'{-r,--maxout}'[maximum number of alignments that will be reported]:n:' \
  '--skipidcheck[do not check whether the fastq ids of mates match]' \
  '--showalign[show alignments]' \
  '--nohead[do not output header]' \
  '*:file:_files' && ret=0

return ret
