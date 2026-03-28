#compdef isc-config.sh

local arguments

arguments=(
    '--cflags[Print the compiler command line options required to compile files that use ISC BIND libraries]'
    '--exec-prefix[Print the directory prefix used in the ISC BIND installation for architecture dependent files]'
    '--libs[Print the linker command line options used to link with the ISC BIND libraries]'
    '--prefix[Print the directory prefix used in the ISC BIND installation for architecture independent files]'
    '--version[Print the version of the installed ISC BIND suite]'
    '*:filename:_files'
)
_arguments -s $arguments
