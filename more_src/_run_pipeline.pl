#compdef run_pipeline.pl
# Documentation: https://bitbucket.org/tasseladmin/tassel-5-source/wiki/Tassel5PipelineCLI
# TASSEL 5 analysis pipeline command-line interface

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '-fork[start a pipeline fork branch]:id' \
  '-input[input file]:file:_files' \
  '-importGuess[import file with format guessing]:file:_files' \
  '-fastAssociation[fast association analysis]' \
  '-mlm[mixed linear model analysis]' \
  '-glm[general linear model analysis]' \
  '-ld[linkage disequilibrium analysis]' \
  '-KinshipPlugin[kinship plugin]' \
  '-kinship[compute kinship matrix]' \
  '-genotypeSummary[genotype summary]' \
  '-FilterSiteBuilderPlugin[site filter builder plugin]' \
  '-export[export dataset to file]:file:_files' \
  '-exportType[export file format]:type' \
  '-combine[combine pipeline forks]:id' \
  '-intersect[intersect joined datasets]' \
  '-union[union of joined datasets]' \
  '-runfork1[run named fork]' \
  '-debug[enable debug logging]::file:_files' \
  '-log[set log file]::file:_files' \
  '-printMemoryUsage[print memory usage]' \
  '-maxThreads[maximum number of threads]:n' \
  '-configParameters[configuration parameters file]:file:_files' \
  '-separate[process forks separately]' \
  '*:arg:_files' && ret=0

return ret
