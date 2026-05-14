# Source: https://github.com/sha1n/path-ethic/blob/ce1d8f8ec6abe43093a237484aba093436d30b08/completion/_peth.zsh
# Repository: sha1n/path-ethic (completion/_peth.zsh)
#compdef peth

function _peth() {

    local -a subcmds

    subcmds=(
        'list:similar to show but lists elements in separate lines'
        'show:displays the current value of PATH and the values of any set prefix and suffix'
        'push:adds a new element at the beginning of the PATH and re-exports' 
        'append:adds a new element at the end of the PATH and re-exports'
        'flip:flips the prefix and suffix to reverse their priority'
        'rm:removes a path element from the PATH and re-exports'
        'reset:removes all prefixes and suffixes and re-exports the original PATH'
        'save:saves the current session settings to disk for later recall'
        'load:loads previously saved settings into the current session'
        'listp:lists all saved presets'
        'rmp:removes a previously saved preset'
        'update:if cloned from a remote git repository, prompts to pull the latest changes from that remote'
        'help:displays help'
    )

    _describe 'peth' subcmds
}

_peth "$@"
