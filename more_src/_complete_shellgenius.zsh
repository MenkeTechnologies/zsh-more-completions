#compdef shellgenius
# Documentation: https://github.com/sderev/shellgenius
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/sderev/shellgenius/blob/df864cd9298cd07f4ad676257f20e7189e3ae4da/completion/_complete_shellgenius.zsh
# Repository: sderev/shellgenius (completion/_complete_shellgenius.zsh)

_shellgenius_completion() {
    local -a completions
    local -a completions_with_descriptions
    local -a response
    (( ! $+commands[shellgenius] )) && return 1

    response=("${(@f)$(env COMP_WORDS="${words[*]}" COMP_CWORD=$((CURRENT-1)) _SHELLGENIUS_COMPLETE=zsh_complete shellgenius)}")

    for type key descr in ${response}; do
        if [[ "$type" == "plain" ]]; then
            if [[ "$descr" == "_" ]]; then
                completions+=("$key")
            else
                completions_with_descriptions+=("$key":"$descr")
            fi
        elif [[ "$type" == "dir" ]]; then
            _path_files -/
        elif [[ "$type" == "file" ]]; then
            _path_files -f
        fi
    done

    if [ -n "$completions_with_descriptions" ]; then
        _describe -V unsorted completions_with_descriptions -U
    fi

    if [ -n "$completions" ]; then
        compadd -U -V unsorted -a completions
    fi
}

if [[ $zsh_eval_context[-1] == loadautofunc ]]; then
    # autoload from fpath, call function directly
    _shellgenius_completion "$@"
else
    # eval/source/. command, register function for later
    compdef _shellgenius_completion shellgenius
fi
