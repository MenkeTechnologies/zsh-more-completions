# Source: https://github.com/sderev/vocabmaster/blob/de9ac94bae85919fef73e60d3dd094d7fc1cc768/completion/_complete_vocabmaster.zsh
# Repository: sderev/vocabmaster (completion/_complete_vocabmaster.zsh)
#compdef vocabmaster

_vocabmaster_completion() {
    local -a completions
    local -a completions_with_descriptions
    local -a response
    (( ! $+commands[vocabmaster] )) && return 1

    response=("${(@f)$(env COMP_WORDS="${words[*]}" COMP_CWORD=$((CURRENT-1)) _VOCABMASTER_COMPLETE=zsh_complete vocabmaster)}")

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

compdef _vocabmaster_completion vocabmaster;

