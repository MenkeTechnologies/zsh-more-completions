#compdef whois.md

local arguments

arguments=(
  {-h,--host}'[connect to server HOST]'
  {-p,--port}'[connect to PORT]'
  '-H[hide legal disclaimers]'
  '--verbose[explain what is being done]'
  '--help[display this help and exit]'
  '--version[output version information and exit]'
  '-l[find the one level less specific match]'
  '-L[find all levels less specific matches]'
  '-m[find all one level more specific matches]'
  '-M[find all levels of more specific matches]'
  '-c[find the smallest match containing a mnt-irt attribute]'
  '-x[exact match]'
  '-b[return brief IP address ranges with abuse contact]'
  '-B[turn off object filtering (show email addresses)]'
  '-G[turn off grouping of associated objects]'
  '-d[return DNS reverse delegation objects too]'
  '-i[ATTR\]... do an inverse look-up for specified ATTRibutes]'
  '-T[TYPE\]... only look for objects of TYPE]'
  '-K[only primary keys are returned]'
  '-r[turn off recursive look-ups for contact information]'
  '-R[force to show local copy of the domain object even]'
  '-a[also search all the mirrored databases]'
  '-s[SOURCE\]... search the database mirrored from SOURCE]'
  '-g[find updates from SOURCE from serial FIRST to LAST]'
  '-t[request template for object of TYPE]'
  '-v[request verbose template for object of TYPE]'
  '-q[query specified server info]'
  '*:filename:_files'
)

_arguments -s $arguments
