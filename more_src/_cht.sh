#compdef cht.sh

# Zsh completion for cht.sh - the only cheat sheet you need (cheat.sh client)

local curcontext="$curcontext" state line ret=1

local -a languages=(
  'arduino' 'assembly' 'awk' 'bash' 'basic' 'bf' 'c' 'chapel' 'clean' 'clojure'
  'coffee' 'cpp' 'csharp' 'd' 'dart' 'dylan' 'elixir' 'elm' 'erlang' 'factor'
  'fortran' 'forth' 'fsharp' 'go' 'groovy' 'haskell' 'java' 'javascript' 'julia'
  'kotlin' 'latex' 'lisp' 'lua' 'matlab' 'nim' 'nodejs' 'objective-c' 'ocaml'
  'octave' 'perl' 'perl6' 'php' 'pike' 'powershell' 'python' 'python3' 'r'
  'racket' 'ruby' 'rust' 'scala' 'scheme' 'sh' 'solidity' 'swift' 'tcl'
  'tcsh' 'typescript' 'vb' 'vbnet' 'zsh'
)

_arguments -s -S \
  '--shell[start interactive REPL shell]' \
  '--help[show help]' \
  '1:topic (language/query):($languages)' \
  '*:query' && ret=0

return ret
