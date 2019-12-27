#compdef sixLangDisplayer.sh

local arguments

arguments=(
  '-b[mode: Borg]'
  '-d[mode: Dead]'
  '-g[mode: Greedy]'
  '-p[mode: Paranoia]'
  '-s[mode: Stoned]'
  '-t[mode: Tired]'
  '-w[mode: Wired]'
  '-y[mode: Youthful]'
  '-e[select the appearance of the cows eyes. \[default: "oo"\]]'
  '-T[the tongue is configurable similarly to the eyes through -T and tongue_string. \[default: " "\]]'
  '-h[display this help message]'
  '-n[if it is specified, the given message will not be word-wrapped.]'
  '-W[specifies roughly where the message should be wrapped. The default is equivalent to -W 40 i.e. wrap words at or before the 40th column. \[default: 40\]]'
  '-f[specifies a cow picture file (cowfile) to use. It can be either a path to a cow file or the name of one of cows included in the package. \[default: "default"\]]'
  '-r[select a random cow]'
  '-l[list all cowfiles included in this package.]'
  '*:filename:_files'
)

_arguments -s $arguments
