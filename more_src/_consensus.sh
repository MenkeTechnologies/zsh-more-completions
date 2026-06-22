#compdef consensus.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/
# BBTools Consensus: generate consensus sequence from mapped reads

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input reads mapped to reference (SAM/BAM)]:file:_files' \
  'ref=[reference sequence file]:file:_files' \
  'out=[output consensus sequence file]:file:_files' \
  'outm=[optional binary model file output]:file:_files' \
  'inm=[optional input model file for statistics]:file:_files' \
  'hist=[optional score histogram output]:file:_files' \
  'overwrite=[allow overwriting existing files]:bool:(t f)' \
  'mindepth=[minimum depth threshold for allele incorporation]:value' \
  'mafsub=[minimum allele fraction for substitutions]:value' \
  'mafdel=[minimum allele fraction for deletions]:value' \
  'mafins=[minimum allele fraction for insertions]:value' \
  'mafn=[threshold for changing Ns to base calls]:value' \
  'usemapq=[include mapping quality in edge weighting]:bool:(t f)' \
  'nonly=[only modify ambiguous N positions]:bool:(t f)' \
  'noindels=[disable indel incorporation]:bool:(t f)' \
  'ceiling=[weight alignments by inverse identity]:value' \
  'name=[set output sequence identifier]:name' \
  '-Xmx[maximum heap size]:mem' \
  '*:file:_files' && ret=0

return ret
