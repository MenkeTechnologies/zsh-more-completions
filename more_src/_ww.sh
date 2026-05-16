#compdef ww
# Documentation: https://man.archlinux.org/search?q=ww
# Reference accessed: 2026-05-16
# Source: https://github.com/typebrook/helper/blob/0d8b2c2e52358b17472871ccbc9f1e69be41fac8/zsh/_ww.sh
# Repository: typebrook/helper (zsh/_ww.sh)

function _ww() {
    compadd -S '' $(
      cd ~/log && \
      find -name '*.md' | \
      sed -E 's#./##; s/.md$//'
    )
}

_ww
