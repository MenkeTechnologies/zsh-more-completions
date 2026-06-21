#compdef playscii.py
# Documentation: https://github.com/michael-lazar/playscii
# ASCII art, animation, and game creation tool

local ret=1

_arguments -s -S \
  '-game[load a game directory]:gamedir:_files -/' \
  '-state[load a game state file (only with -game)]:statefile:_files' \
  '*:art file:_files' && ret=0

return ret
