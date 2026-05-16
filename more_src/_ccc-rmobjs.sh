#compdef ccc-rmobjs.sh
# Documentation: https://man.archlinux.org/search?q=ccc-rmobjs.sh
# Reference accessed: 2026-05-16
# Source: https://github.com/bogner/scripts/blob/88fa565cd90a83abd71110237815e6c5275f80d1/completion/zsh/_ccc-rmobjs.sh
# Repository: bogner/scripts (completion/zsh/_ccc-rmobjs.sh)

(( $+functions[_ccc_object_files] )) ||
_ccc_object_files() {
  local -a objects
  objects=(${(f)"$(find . -name '*.o' | awk -F/ '{print $NF}')"})
  _describe 'object' objects
}

_arguments \
    "*: :_ccc_object_files"

# Local Variables:
# mode: Shell-Script
# sh-indentation: 2
# indent-tabs-mode: nil
# sh-basic-offset: 2
# End:
# vim: ft=zsh sw=2 ts=2 et
