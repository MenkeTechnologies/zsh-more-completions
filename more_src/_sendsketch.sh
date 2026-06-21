#compdef sendsketch.sh
# Documentation: https://github.com/BioInfoTools/BBMap/blob/master/sh/sendsketch.sh
# BBTools SendSketch: compare sketches against a remote server

local ret=1

_arguments -s \
  '*in=[sketch or fasta file to compare]:file:_files' \
  'out=[comparison output destination]:out:_files' \
  'outsketch=[write sketch to file]:file:_files' \
  'local=[have server load sketches locally]:bool:(t f)' \
  'address=[remote server address]:address:' \
  'aws=[use AWS servers instead of NERSC]:bool:(t f)' \
  'mode=[sketch generation mode]:mode:(single sequence)' \
  'k=[kmer length]:k:' \
  'samplerate=[fraction of input reads to sample]:rate:' \
  'minkeycount=[minimum kmer occurrence]:n:' \
  'minprob=[minimum kmer probability]:p:' \
  'minqual=[minimum base quality]:q:' \
  'entropy=[minimum entropy]:e:' \
  'merge=[merge paired reads]:bool:(t f)' \
  'amino=[amino acid mode]:bool:(t f)' \
  'translate=[translate to proteins]:bool:(t f)' \
  'ssu=[scan for SSU sequences]:bool:(t f)' \
  'refid=[reference sketch by name or taxid]:id:' \
  'size=[desired sketch size]:size:' \
  'minsize=[minimum genome size]:size:' \
  'autosize=[flexible sizing]:bool:(t f)' \
  'level=[taxonomic level for reporting]:level:' \
  'include=[restrict to specific clades]:clades:' \
  'exclude=[ignore specific clades]:clades:' \
  'banunclassified=[ignore unclassified organisms]:bool:(t f)' \
  'banvirus=[ignore viruses]:bool:(t f)' \
  'format=[output format]:fmt:(2 3 4 5 json constellation)' \
  'records=[maximum records to report]:n:' \
  'printall=[enable all output columns]:bool:(t f)' \
  'printani=[print ANI estimate]:bool:(t f)' \
  'printtaxid=[print NCBI taxid]:bool:(t f)' \
  'printtaxname=[print taxonomic name]:bool:(t f)' \
  'printcontam=[print contamination estimate]:bool:(t f)' \
  'minhits=[minimum hit threshold]:n:' \
  'minani=[minimum ANI threshold]:ani:' \
  'minwkid=[minimum WKID threshold]:wkid:' \
  'color=[color by taxonomic level]:level:' \
  '*:file:_files' && ret=0

return ret
