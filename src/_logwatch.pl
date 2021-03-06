#compdef logwatch.pl

local arguments

arguments=(
  '--detail[report Detail Level - High, Med, Low or any #.]'
  '--logfile[*Name of a logfile definition to report on.]'
  '--logdir[name of default directory where logs are stored.]'
  '--service[*Name of a service definition to report on.]'
  '--output[type>: Report Output - stdout \[default\], mail, file.]'
  '--format[report Format - text \[default\], html.]'
  '--encode[enconding to use - none \[default\], base64.]'
  '--mailto[mail report to <addr>.]'
  '--archives[Use archived log files too.]'
  '--filename[used to specify they filename to save to. --filename <filename> \[Forces output to file\].]'
  '--range[date range: Yesterday, Today, All, Help]'
  '--numeric[Display addresses numerically rather than symbolically and numerically]'
  '--debug[debug Level - High, Med, Low or any #.]'
  '--hostformat[Host Based Report Options - none \[default\], split, splitmail.]'
  '--hostlimit[Limit report to hostname - host1,host2.]'
  '--hostname[overwrites hostname]'
  '--html[_wrap <num_characters>: Default is 80.]'
  '--version[Displays current version.]'
  '--help[This message.]'
  '--usage[Same as --help.]'
  '*:filename:_files'
)

_arguments -s $arguments
