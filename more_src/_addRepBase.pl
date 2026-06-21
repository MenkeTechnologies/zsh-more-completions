#compdef addRepBase.pl
# Documentation: https://github.com/Dfam-consortium/RepeatMasker/blob/master/addRepBase.pl
# Add RepBase RepeatMasker Edition libraries to the RepeatMasker database

local ret=1

_arguments -s -S \
  '-libdir=[alternate directory for primary repeat libraries]:dir:_files -/' && ret=0

return ret
