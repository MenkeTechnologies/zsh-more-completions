# Source: https://github.com/roachme/tec/blob/79c8781183fff39d269e52ed600598af8edea1a7/completion/_tec.zsh
# Repository: roachme/tec (completion/_tec.zsh)
#compdef tec

# TODO:
# 1. Add support to suggest objects (env, desk, task ID)
# 2. Add support for toggles in options -C, -D, -H, etc

local -a subcommands global_opts

global_opts=(
    '(-C)'{-C,--color}'[enable colors]:toggle:(on off)'
    '(-D)'{-D,--debug}'[enable debug mode]:toggle:(on off)'
    '(-h)'{-h,--help}'[show help and exit]'
    '(-F)'{-F,--config}'[path to config file]:directory:_files'
    '(-H)'{-H,--hooks}'[enable hooks]:toggle:(on off)'
    '(-P)'{-P,--plugins}'[plugins directory]:directory:_files'
    '(-T)'{-T,--tasks}'[tasks directory]:directory:_files'
    '(-V)'{-V,--version}'[show version and exit]'
)

_subcommands() {
    subcommands=(
        'add:Add a new task to environment'
        'cat:Concatenate task unit values'
        'cd:Switch to task'
        'cfg:Manage and show configs'
        'desk:Manage and show desks'
        'env:Manage and show environments'
        'help:Show help for commands'
        'init:Init directory structure'
        'ls:List environment tasks'
        'mv:Move (rename) tasks'
        'rm:Remove task from environment'
        'set:Set task unit values'
    )
}

_tec_help() {
    _arguments \
        '(-d)'{-d,--desc}'[output short description for each topic]' \
        '(-l)'{-l,--list}'[output only description for all commands]' \
        '(-s)'{-s,--synopsis}'[output only a short usage synopsis]' \
        ':command:->command'

    case $state in
        command)
            local -a help_topics
            help_topics=(
                add cat cd cfg desk env help init ls mv rm set
                cfg-get cfg-ls
                desk-add desk-cat desk-cd desk-ls desk-mv desk-rm desk-set
                env-add env-cat env-cd env-ls env-rename env-rm env-set
            )
            _describe 'help topic' help_topics
            ;;
    esac
}

_tec_add() {
    _arguments \
        '(-d)'{-d,--desk}'[desk name]:desk:_tec_desks' \
        '(-D)'{-D,--description}'[provide description (generated if not provided)]' \
        '(-e)'{-e,--env}'[environment name]:env:_tec_envs' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-n)'{-n,--no-switch}'[do not switch to task]' \
        '(-N)'{-N,--no-switch-dir}'[neither switch to task nor to task directory]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '*:task ID:'
}

_tec_rm() {
    _arguments \
        '(-d)'{-d,--desk}'[desk name]:desk:_tec_desks' \
        '(-e)'{-e,--env}'[environment name]:env:_tec_envs' \
        '(-f)'{-f,--force}'[never prompt]' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-i)'{-i,--interactive}'[prompt before every removal]' \
        '(-I)'{-I,--once}'[prompt once before removing more than one task ID]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '(-v)'{-v,--verbose}'[explain what is being done]' \
        '*:task ID:_tec_tasks'
}

_tec_ls() {
    _arguments \
        '(-a)'{-a,--all}'[list all tasks (including done)]' \
        '(-d)'{-d,--desk}'[desk name]:desk:_tec_desks' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-H)'{-H,--headers}'[show headers]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '(-t)'{-t,--toggles}'[show ONLY toggle switches (current and previous)]' \
        '(-v)'{-v,--verbose}'[under development: show more verbose output]' \
        '*:environment:_tec_envs'
}

_tec_mv() {
    _arguments \
        '(-f)'{-f,--force}'[overwrite destination task (under development)]' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-t)'{-t,--target}'[move all tasks to target desk (under development)]' \
        ':source:->source' \
        ':destination:'

    case $state in
        source)
            _alternative \
                'envs:environment:_tec_envs' \
                'desks:desk:_tec_desks' \
                'tasks:task:_tec_tasks'
            ;;
    esac
}

_tec_set() {
    _arguments \
        '(-d)'{-d,--desk}'[desk name]:desk:_tec_desks' \
        '(-D)'{-D,--description}'[task description]' \
        '(-e)'{-e,--env}'[environment name]:env:_tec_envs' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-i)'{-i,--interactive}'[set unit values in interactive mode (under development)]' \
        '(-P)'{-P,--priority}'[task priority]:priority:(lowest low mid high highest)' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '(-T)'{-T,--type}'[task type]:type:(task bugfix feature hotfix)' \
        '*:task ID:_tec_tasks'
}

_tec_cat() {
    _arguments \
        '(-d)'{-d,--desk}'[desk name]:desk:_tec_desks' \
        '(-e)'{-e,--env}'[environment name]:env:_tec_envs' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-k)'{-k,--key}'[key to show (builtin or plugin)]:key' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '*:task ID:_tec_tasks'
}

_tec_cd() {
    _arguments \
        '(-d)'{-d,--desk}'[desk name]:desk:_tec_desks' \
        '(-e)'{-e,--env}'[environment name]:env:_tec_envs' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-n)'{-n,--no-update}'[do not update toggles]' \
        '(-N)'{-N,--no-switch-dir}'[neither update toggles nor switch to task directory]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '*:task ID:_tec_tasks'
}

_tec_cfg() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C \
        '(-h)'{-h,--help}'[show help and exit]' \
        ':subcommand:->subcmd' \
        '*:: :->args'

    case $state in
        subcmd)
            local -a cfg_subcommands
            cfg_subcommands=(
                'get:Get config values'
                'ls:List config values'
                'set:Set config values (under development)'
                'revert:Revert config values (under development)'
                'save:Save config values into file (under development)'
            )
            _describe -t commands 'cfg subcommand' cfg_subcommands
            ;;
        args)
            case $line[1] in
                get) _tec_cfg_get ;;
                ls) _tec_cfg_ls ;;
                set) _tec_cfg_set ;;
                revert) _tec_cfg_revert ;;
                save) _tec_cfg_save ;;
            esac
            ;;
    esac
}

_tec_cfg_get() {
    _arguments \
        '*:config value:'
}

_tec_cfg_ls() {
    _arguments
}

_tec_cfg_set() {
    _arguments \
        ':config key:' \
        ':config value:'
}

_tec_cfg_revert() {
    _arguments \
        ':config key:'
}

_tec_cfg_save() {
    _arguments
}

# Desk subcommands
_tec_desk() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C \
        '(-h)'{-h,--help}'[show help and exit]' \
        ':subcommand:->subcmd' \
        '*:: :->args'

    case $state in
        subcmd)
            local -a desk_subcommands
            desk_subcommands=(
                'add:Add a new desk'
                'cat:Concatenate desks info'
                'cd:Switch to desk'
                'ls:List desks'
                'mv:Move (rename) desks'
                'rm:Remove desk with all tasks'
                'set:Set desks values'
            )
            _describe -t commands 'desk subcommand' desk_subcommands
            ;;
        args)
            case $line[1] in
                add) _tec_desk_add ;;
                cat) _tec_desk_cat ;;
                cd) _tec_desk_cd ;;
                ls) _tec_desk_ls ;;
                mv) _tec_desk_mv ;;
                rm) _tec_desk_rm ;;
                set) _tec_desk_set ;;
            esac
            ;;
    esac
}

_tec_desk_add() {
    _arguments \
        '(-e)'{-e,--env}'[environment name]:env:_tec_envs' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-n)'{-n,--no-switch}'[do not switch to newly created desk]' \
        '(-N)'{-N,--no-switch-dir}'[neither switch to task nor to desk directory]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '*:desk name:'
}

_tec_desk_rm() {
    _arguments \
        '(-e)'{-e,--env}'[environment name]:env:_tec_envs' \
        '(-f)'{-f,--force}'[never prompt]' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-i)'{-i,--interactive}'[prompt before every removal]' \
        '(-I)'{-I,--once}'[prompt once before removing more than one task ID]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '(-v)'{-v,--verbose}'[explain what is being done]' \
        '*:desk name:_tec_desks'
}

_tec_desk_ls() {
    _arguments \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        ':environment:_tec_envs'
}

_tec_desk_mv() {
    _arguments \
        '(-e)'{-e,--env}'[environment name]:env:_tec_envs' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        ':source desk:_tec_desks' \
        ':destination desk:'
}

_tec_desk_set() {
    _arguments \
        '(-D)'{-D,--description}'[task description]' \
        '(-e)'{-e,--env}'[environment name]:env:_tec_envs' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '*:desk name:_tec_desks'
}

_tec_desk_cat() {
    _arguments \
        '(-d)'{-d,--desk}'[desk name]:desk:_tec_desks' \
        '(-e)'{-e,--env}'[environment name]:env:_tec_envs' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-k)'{-k,--key}'[key to show (builtin or plugin)]:key' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '*:desk name:_tec_desks'
}

_tec_desk_cd() {
    _arguments \
        '(-e)'{-e,--env}'[environment name]:env:_tec_envs' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-n)'{-n,--no-switch}'[do not switch to task]' \
        '(-N)'{-N,--no-switch-dir}'[neither switch to task nor to desk directory]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '*:desk name:_tec_desks'
}

# Environments subcommands
_tec_env() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C \
        '(-h)'{-h,--help}'[show help and exit]' \
        ':subcommand:->subcmd' \
        '*:: :->args'

    case $state in
        subcmd)
            local -a env_subcommands
            env_subcommands=(
                'add:Add a new environment'
                'cat:Concatenate environment info'
                'cd:Switch to environment'
                'ls:List environments'
                'rename:Rename environment'
                'rm:Remove environment with all desks and tasks'
                'set:Set environment values'
            )
            _describe -t commands 'env subcommand' env_subcommands
            ;;
        args)
            case $line[1] in
                add) _tec_env_add ;;
                cat) _tec_env_cat ;;
                cd) _tec_env_cd ;;
                ls) _tec_env_ls ;;
                rename) _tec_env_rename ;;
                rm) _tec_env_rm ;;
                set) _tec_env_set ;;
            esac
            ;;
    esac
}

_tec_env_add() {
    _arguments \
        '(-d)'{-d,--desk}'[desk name (default is "desk")]:desk:_tec_desks' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-n)'{-n,--no-switch}'[do not switch to newly created environment]' \
        '(-N)'{-N,--no-switch-dir}'[neither switch to task nor to environment directory]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '*:environment name:'
}

_tec_env_rm() {
    _arguments \
        '(-f)'{-f,--force}'[never prompt]' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-i)'{-i,--interactive}'[prompt before every removal]' \
        '(-I)'{-I,--once}'[prompt once before removing more than one task ID]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '(-v)'{-v,--verbose}'[explain what is being done]' \
        '*:environment name:_tec_envs'
}

_tec_env_ls() {
    _arguments \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '(-v)'{-v,--verbose}'[under development: show more info]'
}

_tec_env_rename() {
    _arguments \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        ':source environment:_tec_envs' \
        ':destination environment:'
}

_tec_env_set() {
    _arguments \
        '(-d)'{-d,--desk}'[desk name]:desk:_tec_desks' \
        '(-D)'{-D,--description}'[environment description]' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-i)'{-i,--interactive}'[set unit values in interactive mode (under development)]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '*:environment name:_tec_envs'
}

_tec_env_cat() {
    _arguments \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '*:environment name:_tec_envs'
}

_tec_env_cd() {
    _arguments \
        '(-d)'{-d,--desk}'[desk name]:desk:_tec_desks' \
        '(-h)'{-h,--help}'[show help and exit]' \
        '(-n)'{-n,--no-switch}'[do not switch to environment]' \
        '(-N)'{-N,--no-switch-dir}'[neither switch to task nor to environment directory]' \
        '(-q)'{-q,--quiet}'[do not write anything to standard error output]' \
        '*:environment name:_tec_envs'
}

# Helper functions
_tec_envs() {
    local -a envs
    # This would ideally query the actual envs, but for completion we'll just provide a stub
    envs=('default' 'development' 'staging' 'production')
    _describe 'environment' envs
}

_tec_desks() {
    local -a desks
    # Similarly, this would query the actual desks
    desks=('main' 'work' 'personal' 'archive')
    _describe 'desk' desks
}

_tec_tasks() {
    local -a tasks
    # This would query the actual tasks
    tasks=('task1' 'task2' 'task3')
    _describe 'task' tasks
}

# Main completion function
_tec_comp() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C -s \
        $global_opts \
        ':subcommand:->subcmd' \
        '*:: :->args'

    case $state in
        subcmd)
            _subcommands
            _describe -t commands 'tec command' subcommands
            ;;
        args)
            # If no subcommand was provided (just options), we're done
            if (( $#line == 0 )); then
                return
            fi

            case $line[1] in
                help) _tec_help ;;
                init) ;;
                add) _tec_add ;;
                cat) _tec_cat ;;
                cd) _tec_cd ;;
                cfg) _tec_cfg ;;
                desk) _tec_desk ;;
                env) _tec_env ;;
                ls) _tec_ls ;;
                mv) _tec_mv ;;
                rm) _tec_rm ;;
                set) _tec_set ;;
                *) _message "unknown subcommand: $line[1]" ;;
            esac
            ;;
    esac
}

_tec_comp "$@"
