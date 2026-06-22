#compdef comparesketch.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/
# BBTools CompareSketch: compare query sketches to reference sketches

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input sketches or fasta files]:file:_files' \
  'out=[comparison output destination]:file:_files' \
  'outsketch=[write generated sketch files]:file:_files' \
  'ref=[reference sketches to compare against]:file:_files' \
  'mode=[generation mode]:mode:(single sequence perfile)' \
  'k=[kmer length (1-32)]:k' \
  'size=[fixed sketch size]:size' \
  'threads=[number of comparison threads]:count' \
  'index=[index sketches for faster searching]:bool:(t f)' \
  'tree=[TaxTree file path]:file:_files' \
  'level=[report best per taxa at level]:level' \
  'include=[restrict to specific clades]:clades' \
  'exclude=[ignore specific clades]:clades' \
  'format=[output format]:format:(2 3 4 json 5 constellation)' \
  'records=[maximum records to report]:count' \
  'minani=[minimum ANI threshold]:value' \
  'minhits=[minimum kmer hits threshold]:value' \
  'minwkid=[minimum WKID threshold]:value' \
  'printani=[print ANI estimate]:bool:(t f)' \
  'sortbyani=[sort by ANI/AAI/WKID]:bool:(t f)' \
  'amino=[use amino acid mode]:bool:(t f)' \
  'translate=[call genes and translate]:bool:(t f)' \
  'ssu=[scan for full-length SSU sequences]:bool:(t f)' \
  'color=[color output by family level]:bool:(t f)' \
  '-Xmx[maximum memory allocation]:mem' \
  '*:file:_files' && ret=0

return ret
