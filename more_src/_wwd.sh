#compdef wwd
# Source: https://github.com/typebrook/helper/blob/0d8b2c2e52358b17472871ccbc9f1e69be41fac8/zsh/_wwd.sh
# Repository: typebrook/helper (zsh/_wwd.sh)

function _wwd() {
    compadd -S '' $(
      cd ~/log/diary/ && \
      find -name '*.md' -printf "%f\n" | \
      sed -E 's/.md$//'
    )
}

_wwd
