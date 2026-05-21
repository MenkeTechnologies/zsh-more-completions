#compdef ww
# Documentation: https://github.com/typebrook/helper/blob/0d8b2c2e52358b17472871ccbc9f1e69be41fac8/zsh/_ww.sh
# Reference accessed: 2026-05-21
# Verified: upstream docs at the URL above.
# `ww` is a user-defined function in typebrook/helper for opening ~/log/*.md
# files. Completion mirrors the upstream _ww.sh verbatim.

function _ww() {
    compadd -S '' $(
      cd ~/log && \
      find -name '*.md' | \
      sed -E 's#./##; s/.md$//'
    )
}

_ww
