#compdef mavgen.py
# Documentation: https://mavlink.io/en/getting_started/generate_libraries.html
# Source: ArduPilot/pymavlink tools/mavgen.py — generate MAVLink language bindings from XML.
# Reference accessed: 2026-06-10

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -s \
    '(-o --output)'{-o+,--output=}'[output directory (default mavlink)]:dir:_directories' \
    '--lang=[target language]:lang:(C C++11 Python Python2 Python3 CS JavaScript JavaScript_NextGen TypeScript Lua WLua ObjC Swift Java C#)' \
    '--wire-protocol=[MAVLink wire protocol]:proto:(0.9 1.0 2.0)' \
    '--no-validate[skip XML validation (faster)]' \
    '--strict-units[validate XML units attributes]' \
    '*:xml definition file:_files -g "*.xml(-.)"' \
    && ret=0

return ret
