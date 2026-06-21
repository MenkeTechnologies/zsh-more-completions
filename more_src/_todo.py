#compdef todo.py
# Documentation: https://todopy.readthedocs.io/
# todo.py - simple CLI plaintext todo application inspired by todo.txt

local ret=1

_arguments -C \
  '(-h --help)'{-h,--help}'[display help message]' \
  '(-V --version)'{-V,--version}'[display version and credits]' \
  '(-c --config)'{-c,--config}'=[specify custom configuration file]:file:_files' \
  '(-d --dir)'{-d,--dir}'=[set working directory]:dir:_files -/' \
  '(-p --plain-mode)'{-p,--plain-mode}'[toggle color output]' \
  '(-P --no-priority)'{-P,--no-priority}'[toggle priority label display]' \
  '(-t --prepend-date)'{-t,--prepend-date}'[toggle date prepending to new items]' \
  '(-i --invert-colors)'{-i,--invert-colors}'[toggle text vs background coloring]' \
  '(-l --legacy)'{-l,--legacy}'[toggle legacy item organization]' \
  '1:command:((
    add:"add a todo item"
    addm:"add multiple todo items"
    append:"append text to an item"
    app:"append text to an item"
    del:"delete an item"
    rm:"delete an item"
    depri:"remove priority from an item"
    dp:"remove priority from an item"
    do:"mark an item done"
    list:"list items"
    ls:"list items"
    listcon:"list contexts"
    lsc:"list contexts"
    listdate:"list items by date"
    lsd:"list items by date"
    listproj:"list projects"
    lsp:"list projects"
    log:"show the log"
    pri:"set priority on an item"
    p:"set priority on an item"
    prepend:"prepend text to an item"
    pre:"prepend text to an item"
    pull:"pull from remote"
    push:"push to remote"
    status:"show status"
    help:"show help"
  ))' \
  '*::arg:_default' && ret=0

return ret
