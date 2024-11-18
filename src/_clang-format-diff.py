#compdef clang-format-diff.py

local arguments

arguments=(
  {-h,--help}'[show this help message and exit]'
  '-i[apply edits to files instead of displaying a diff]'
  '-p[strip the smallest prefix containing P slashes]'
  '-regex[custom pattern selecting file paths to reformat (case]'
  '-iregex[custom pattern selecting file paths to reformat (case]'
  '-sort-includes[let clang-format sort include blocks]'
  {-v,--verbose}'[be more verbose, ineffective without -i]'
  '-style[formatting style to apply (LLVM, GNU, Google]'
  '-fallback-style[the name of the predefined style used as afallback in]'
  '-binary[location of binary to use for clang-format]'
  '*:filename:_files'
)

_arguments -s $arguments
