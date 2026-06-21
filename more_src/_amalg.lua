#compdef amalg.lua
# Documentation: https://github.com/siffiejoe/lua-amalg
# amalgamate Lua modules into a single source file

local ret=1

_arguments -s -S \
  '-h[display all available options]' \
  '(-o --output)'{-o,--output}'+[write output to file instead of stdout]:file:_files' \
  '(-s --script)'{-s,--script}'+[embed the main script of the application]:file:_files' \
  '(-S --shebang)'{-S,--shebang}'+[set a custom shebang line for the result]:shebang' \
  '(-c --cache)'{-c,--cache}'[use the amalg.cache file for collected module names]' \
  '-C+[use a custom cache file instead of amalg.cache]:file:_files' \
  '-x[embed C modules from cache and command-line]' \
  '(-d --debug)'{-d,--debug}'[preserve original filenames and line numbers in errors]' \
  '*-i+[ignore modules matching the Lua pattern]:pattern' \
  '(-f --fallback)'{-f,--fallback}'[allow local modules to take precedence]' \
  '-a[disable default local alias to the global arg table]' \
  '-z+[select a compression plugin by name]:name' \
  '*-t+[apply a transformation plugin]:name' \
  '*-v+[embed read-only files as virtual resources]:file:_files' \
  '*:module' && ret=0

return ret
