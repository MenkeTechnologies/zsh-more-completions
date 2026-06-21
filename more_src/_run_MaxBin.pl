#compdef run_MaxBin.pl
# Documentation: https://sourceforge.net/projects/maxbin2/
# MaxBin2 - binning metagenomic contigs by abundance and tetranucleotide frequency

local ret=1

_arguments -s -S \
  '-contig[input contig file (required)]:file:_files' \
  '-out[output basename (required)]:path:_files' \
  '-abund[contig abundance file]:file:_files' \
  '-abund2[second abundance file]:file:_files' \
  '-abund3[third abundance file]:file:_files' \
  '-abund4[fourth abundance file]:file:_files' \
  '-abund_list[file listing abundance files]:file:_files' \
  '-reads[reads file]:file:_files' \
  '-reads2[second reads file]:file:_files' \
  '-reads3[third reads file]:file:_files' \
  '-reads4[fourth reads file]:file:_files' \
  '-reads_list[file listing reads files]:file:_files' \
  '-min_contig_length[minimum contig length (default 1000)]:length' \
  '-max_iteration[maximum number of iterations]:iterations' \
  '-thread[number of threads]:threads' \
  '-prob_threshold[probability threshold for EM]:threshold' \
  '-markerset[marker gene set 107 or 40]:set:(107 40)' \
  '-markerpath[path to marker gene file]:file:_files' \
  '-plotmarker[plot marker gene presence]' \
  '-reassembly[reassembly mode]' \
  '-preserve_intermediate[keep intermediate files]' \
  '-verbose[verbose output]' \
  '-version[show version]' \
  '-v[show version]' && ret=0

return ret
