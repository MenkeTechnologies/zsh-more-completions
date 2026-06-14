#compdef wwd
# Documentation: https://github.com/typebrook/helper/blob/0d8b2c2e52358b17472871ccbc9f1e69be41fac8/zsh/_wwd.sh
# Reference accessed: 2026-05-21
# Verified: upstream docs at the URL above.
# `wwd` is a user-defined function in typebrook/helper for opening
# ~/log/diary/*.md entries. Completion mirrors the upstream _wwd.sh verbatim.

function _wwd() {
    compadd -S '' $(
      cd ~/log/diary/ && \
      find -name '*.md' -printf "%f\n" | \
      sed -E 's/.md$//'
    )
}

_wwd
