#compdef callpeaks.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/bb-tools-user-guide/
# CallPeaks: detect peaks in a kmer-frequency histogram

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input histogram file (accepts stdin)]:file:_files' \
  'out=[output file for peak results (default stdout)]:file:_files' \
  'minHeight=[minimum peak height threshold]:n:' \
  'minVolume=[minimum peak area threshold]:n:' \
  'minWidth=[minimum peak width threshold]:n:' \
  'minPeak=[minimum X-value for peaks]:n:' \
  'maxPeak=[maximum X-value for peaks]:n:' \
  'maxPeakCount=[maximum number of peaks to output]:n:' \
  'countColumn=[zero-based column index containing counts]:n:' \
  'ploidy=[ploidy specification (autodetected if unset)]:n:' \
  'logscale=[enable log-scale transformation]:bool:(t f)' \
  'smoothradius=[triangle filter radius for data smoothing]:n:' \
  'smoothprogressive=[progressive smoothing based on x-coordinate]:bool:(t f)' \
  'maxradius=[maximum progressive smoothing radius]:n:' \
  'progressivemult=[depth increase factor for radius increment]:n:' \
  '*:file:_files' && ret=0

return ret
