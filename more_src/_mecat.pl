#compdef mecat.pl
# Documentation: https://github.com/xiaochuanle/MECAT2
# MECAT2: error correction and de novo assembly tool for single-molecule reads

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '*::command:->command' && ret=0

case $state in
  command)
    _values 'mecat.pl subcommand' \
      'config[create a config file]' \
      'correct[correct raw reads]' \
      'assemble[assemble corrected reads]' && ret=0
    _files
    ;;
esac

return ret
