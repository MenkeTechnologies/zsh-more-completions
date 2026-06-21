#compdef guess-ploidy.py
# Documentation: https://raw.githubusercontent.com/samtools/bcftools/develop/misc/guess-ploidy.py
# Plot output of the bcftools +guess-ploidy -v plugin

local ret=1

_arguments -s -S \
  '1:guess-ploidy.out:_files' \
  '2:image prefix:' && ret=0

return ret
