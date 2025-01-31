#compdef python.app

local arguments

arguments=(
  '-b[: issue warnings about str(bytes_instance), str(bytearray_instance)]'
  '-B[: dont write .pyc files on import; also PYTHONDONTWRITEBYTECODE=x]'
  '-c[: program passed in as string (terminates option list)]'
  '-d[: turn on parser debugging output (for experts only, only works on]'
  '-E[: ignore PYTHON* environment variables (such as PYTHONPATH)]'
  '-h[: print this help message and exit (also --help)]'
  '-i[: inspect interactively after running script; forces a prompt even]'
  '-I[: isolate Python from the users environment (implies -E and -s)]'
  '-m[: run library module as a script (terminates option list)]'
  '-O[: remove assert and __debug__-dependent statements; add .opt-1 before]'
  '-OO[: do -O changes and also discard docstrings; add .opt-2 before]'
  '-q[: dont print version and copyright messages on interactive startup]'
  '-s[: dont add user site directory to sys.path; also PYTHONNOUSERSITE]'
  '-S[: dont imply import site on initialization]'
  '-u[: force the stdout and stderr streams to be unbuffered;]'
  '-v[: verbose (trace import statements); also PYTHONVERBOSE=x]'
  '-V[: print the Python version number and exit (also --version)]'
  '-W[: warning control; arg is action:message:category:module:lineno]'
  '-x[: skip first line of source, allowing use of non-Unix forms of #!cmd]'
  '-X[: set implementation-specific option. The following options are available:]'
  '-X[enable faulthandler]'
  '-X[enable the traditional LL(1) parser; also PYTHONOLDPARSER]'
  '-X[output the total reference count and number of used]'
  '-X[start tracing Python memory allocations using the]'
  '-X[show how long each import takes. It shows module name]'
  '-X[enable CPythons "development mode", introducing additional runtime]'
  '-X[8: enable UTF-8 mode for operating system interfaces, overriding the default]'
  '-X[PATH: enable writing .pyc files to a parallel tree rooted at the]'
  '--check-hash-based-pycs[control how Python invalidates hash-based .pyc files]'
  '*:filename:_files'
)

_arguments -s $arguments
