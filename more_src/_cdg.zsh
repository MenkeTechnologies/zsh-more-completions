#compdef cdg
# Source: https://github.com/typebrook/helper/blob/0d8b2c2e52358b17472871ccbc9f1e69be41fac8/zsh/_cdg.zsh
# Repository: typebrook/helper (zsh/_cdg.zsh)

function _cdg() {
    compadd -S '' $(cd ~/git && ls -d ${words[2]}*/)
}

_cdg
