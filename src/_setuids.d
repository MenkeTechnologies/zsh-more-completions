#compdef setuids.d

local arguments

arguments=(
  '-arch[programs and Mach-O files for the specified architecture]'
  '-a[claim anonymous tracing state]'
  '-A[generate plist(5) entries for anonymous tracing]'
  '-b[set trace buffer size]'
  '-c[run specified command and exit upon its completion]'
  '-C[run cpp(1) preprocessor on script files]'
  '-D[define symbol when invoking preprocessor]'
  '-e[exit after compiling request but prior to enabling probes]'
  '-f[enable or list probes matching the specified function name]'
  '-F[coalesce trace output by function]'
  '-h[generate a header file with definitions for static probes]'
  '-H[print included files when invoking preprocessor]'
  '-i[enable or list probes matching the specified probe id]'
  '-I[add include directory to preprocessor search path]'
  '-l[list probes matching specified criteria]'
  '-L[add library directory to library search path]'
  '-m[enable or list probes matching the specified module name]'
  '-n[enable or list probes matching the specified probe name]'
  '-o[set output file]'
  '-p[grab specified process-ID and cache its symbol tables]'
  '-P[enable or list probes matching the specified provider name]'
  '-q[set quiet mode (only output explicitly traced data)]'
  '-s[enable or list probes according to the specified D script]'
  '-S[print D compiler intermediate code]'
  '-U[undefine symbol when invoking preprocessor]'
  '-v[set verbose mode (report stability attributes, arguments)]'
  '-V[report DTrace API version]'
  '-w[permit destructive actions]'
  '-W[wait for specified process and exit upon its completion]'
  '-x[enable or modify compiler and tracing options]'
  '-Z[permit probe descriptions that match zero probes]'
  '*:filename:_files'
)

_arguments -s $arguments
