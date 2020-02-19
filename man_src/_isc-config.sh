#compdef bind9-config

# Autogenerated from man page /usr/share/man/man1/bind9-config.1.gz

local arguments

arguments=(
    '--cflags[Prints the compiler command line options required to compile files that use I…]'
    '--exec-prefix[Prints the directory prefix used in the ISC BIND installation for architectur…]'
    '--libs[Prints the linker command line options used to link with the ISC BIND librari…]'
    '--prefix[Prints the directory prefix used in the ISC BIND installation for architectur…]'
    '--version[Prints the version of the installed ISC BIND suite.]'
)
_arguments -s $arguments
