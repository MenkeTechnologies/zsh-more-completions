#compdef ccc-override.sh
# Documentation: https://man.archlinux.org/search?q=ccc-override.sh
# Reference accessed: 2026-05-16
# Source: https://github.com/bogner/scripts/blob/88fa565cd90a83abd71110237815e6c5275f80d1/completion/zsh/_ccc-override.sh
# Repository: bogner/scripts (completion/zsh/_ccc-override.sh)

(( $+functions[_ccc_override_commands] )) ||
_ccc_override_commands() {
  _command_names -e
}

(( $+functions[_ccc_override_is_qa_override] )) ||
_ccc_override_is_qa_override() {
  (( $+commands[$1] )) && return 1
  case $1 in
    -q)       return 0;;
    ^*)       return 0;;
    +*)       return 0;;
    s/*)      return 0;;
    x*)       return 0;;
    O[sz0-9]) return 0;;
    X*)       return 0;;
  esac
  return 1
}

if [[ $words[$CURRENT] == -* ]]; then
  _arguments \
    -h'[show help message]' \
    -q'[Silence information about the changes to the command line arguments]'
else
  (( CURRENT-- ))
  shift words
  # Skip past any override arguments and then do normal command completion
  while _ccc_override_is_qa_override $words[1]; do
    (( CURRENT-- ))
    shift words
  done
  _normal
fi

# Local Variables:
# mode: Shell-Script
# sh-indentation: 2
# indent-tabs-mode: nil
# sh-basic-offset: 2
# End:
# vim: ft=zsh sw=2 ts=2 et
