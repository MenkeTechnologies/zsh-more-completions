#compdef {0}
# Documentation: https://man.archlinux.org/search?q={0}
# Reference accessed: 2026-05-16
# Source: https://github.com/Garcia6l20/reflex/blob/9df692430b6ab24bfa7a4193ca4b428422a5fc61/cli/src/_zsh_source.sh
# Repository: Garcia6l20/reflex (cli/src/_zsh_source.sh)

if [[ -n "{3}" && -d "{3}" ]]; then
    case ":$PATH:" in
        *":{3}:"*) ;;
        *) export PATH="{3}:$PATH" ;;
    esac
fi

_{1}_completion() {{
    local completed=0
    local -a completions
    local -a completions_with_descriptions
    local -a response
    local type value descr
    local i

    response=("${{(@f)$(env \
        _REFLEX_COMP_LINE="${{words[*]}}" \
        _REFLEX_COMP_POINT=$((CURRENT-1)) \
        _REFLEX_COMPLETE=zsh_complete "{2}")}}")

    if (( ${{#response[@]}} > 0 )); then
        completed=${{response[1]}}
    fi

    i=2
    while (( i + 2 <= ${{#response[@]}} )); do
        type=${{response[i]}}
        value=${{response[i+1]}}
        descr=${{response[i+2]}}

        if [[ "$type" == "plain" ]]; then
            if [[ "$descr" == "_" ]]; then
                completions+=("$value")
            else
                completions_with_descriptions+=("$value":"$descr")
            fi
        elif [[ "$type" == "dir" ]]; then
            _path_files -/
        elif [[ "$type" == "file" ]]; then
            if [[ "$value" == "*" ]]; then
                _path_files
            else
                _path_files -g "$value" -/
            fi
        fi
        (( i += 3 ))
    done

    if [ -n "$completions_with_descriptions" ]; then
        if [[ "$completed" == "1" ]]; then
            _describe -V unsorted completions_with_descriptions -U -S ' '
        else
            _describe -V unsorted completions_with_descriptions -U -S ''
        fi
    fi

    if [ -n "$completions" ]; then
        if [[ "$completed" == "1" ]]; then
            compadd -U -V unsorted -S ' ' -a completions
        else
            compadd -U -V unsorted -S '' -a completions
        fi
    fi
}}

if [[ $zsh_eval_context[-1] == loadautofunc ]]; then
    # autoload from fpath, call function directly
    _{1}_completion "$@"
else
    # eval/source/. command, register function for later
    compdef _{1}_completion "{0}"
fi
