#compdef necat.pl
# Documentation: https://github.com/xiaochuanle/NECAT
# NECAT: error correction and de novo assembly tool for Nanopore long reads

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '*::command:->command' && ret=0

case $state in
  command)
    _values 'necat.pl subcommand' \
      'config[create a config file template]' \
      'correct[correct the raw noisy reads]' \
      'assemble[assemble the contigs]' \
      'bridge[run the bridging-step]' && ret=0
    _files
    ;;
esac

return ret
