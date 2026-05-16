#compdef wi
# Documentation: https://man.archlinux.org/search?q=wi
# Reference accessed: 2026-05-16
# Source: https://github.com/typebrook/helper/blob/0d8b2c2e52358b17472871ccbc9f1e69be41fac8/zsh/_wi.sh
# Repository: typebrook/helper (zsh/_wi.sh)

function _wi() {
    compadd -S '' $(
      cd ~/log && \
      find -not -path "./logseq/*" -name '*.md' -printf "%f\n" | \
      sed -E '/^[0-9]{4}-[0-9]{2}-[0-9]{2}/d; s/.md$//'
    )
}

_wi
