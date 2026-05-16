#compdef ogit.sh ogit
# Documentation: https://man.archlinux.org/search?q=ogit.sh
# Reference accessed: 2026-05-16
# Source: https://github.com/aIrseneO/aIrseneO/blob/1ec5121a87fbafc23cd5b902752a408dd393e0b3/ogit.sh
# Repository: aIrseneO/aIrseneO (ogit.sh)
#!/bin/bash

# List of valid commands
#
COMMANDS_LIST=(
    "login create get show install completion zsh fish workplace user orgs repos"
)

# Initialize default values for options (Global variables)
#
option_user=false
option_orgs=""
option_exorgs="42-ready-player-hackathon"
option_repos=""
option_dir="$HOME/workplace"
option_summary_only=false
option_no_header=false
option_format=""
option_format_header=false
option_pretty_json=false

# Colors for pretty output
#
RESET=$'\033[0m'
BOLD=$'\033[1m'
RED=$'\033[31m'
GREEN=$'\033[32m'
YELLOW=$'\033[33m'
BLUE=$'\033[34m'
MAGENTA=$'\033[35m'
CYAN=$'\033[36m'

# Helpers for aligned colored output
strip_ansi() {
    sed -E 's/\x1B\[[0-9;]*[A-Za-z]//g'
}

visual_len() {
    local s
    s=$(printf %s "$1" | strip_ansi)
    echo ${#s}
}

print_row() {
    local label="$1"
    local desc="$2"
    local width="$3"
    local len pad
    len=$(visual_len "$label")
    pad=$((width - len))
    (( pad < 2 )) && pad=2
    printf "  %s%*s%s\n" "$label" "$pad" "" "$desc"
}

# Styled error printing
#
print_error() {
    local msg="$1"
    local code="${2:-1}"
    echo "${BLUE}{${RESET} error: ${RED}${msg}${RESET}, code: ${YELLOW}${code}${RESET} ${BLUE}}${RESET}"
}

# Function to display the help message
#
usage() {
    local exit_code=${1:-1}
    local prog
    prog="$(basename "$0")"

    # Pretty Usage header
    echo "${BOLD}${MAGENTA}Usage${RESET}: ${CYAN}./${prog}${RESET} ${YELLOW}[-h|--help] [--user] [--orgs <args>] [--exorgs <args>] [--repos <args>] [--dir <arg>] [--summary-only] [--no-header] [--format <csv|json>] [--format-header] [--pretty-json] [--]${RESET} ${BLUE}<command>${RESET}"
    echo

    # Options (left column width)
    local w=30
    echo "${BOLD}${MAGENTA}Options${RESET}:"
    print_row "${CYAN}-h, --help${RESET}" "Show this help and exit" "$w"
    print_row "${CYAN}--user${RESET}" "Limit the scope to user repositories only" "$w"
    print_row "${CYAN}--orgs ${YELLOW}<args>${RESET}" "Select specific organizations (comma-separated)" "$w"
    print_row "${CYAN}--exorgs ${YELLOW}<args>${RESET}" "Exclude specific organizations (comma-separated)" "$w"
    print_row "${CYAN}--repos ${YELLOW}<args>${RESET}" "Select specific repositories (comma-separated)" "$w"
    print_row "${CYAN}--dir ${YELLOW}<arg>${RESET}" "Target directory for clones (default ${HOME}/workplace)" "$w"
    print_row "${CYAN}--summary-only${RESET}" "Print only per-organization summary footer (no per-repo lines)" "$w"
    print_row "${CYAN}--no-header${RESET}" "Suppress header box lines; print only footers" "$w"
    print_row "${CYAN}--format ${YELLOW}<csv|json>${RESET}" "Output summaries in machine-readable CSV or JSON" "$w"
    print_row "${CYAN}--format-header${RESET}" "With --format=csv, print a CSV header line" "$w"
    print_row "${CYAN}--pretty-json${RESET}" "With --format=json, print indented JSON" "$w"
    print_row "${CYAN}--${RESET}" "Stop parsing options (for positional args starting with '-')" "$w"
    echo

    # Commands
    echo "${BOLD}${MAGENTA}Commands${RESET}:"
    print_row "${BLUE}login${RESET}" "Authenticate with GitHub via gh (no-op if already authenticated)" "$w"
    print_row "${BLUE}create ${CYAN}workplace${RESET}" "Clone repositories into the target directory; respects filters" "$w"
    print_row "${BLUE}get ${CYAN}user${RESET}" "Print the authenticated GitHub username" "$w"
    print_row "${BLUE}get ${CYAN}orgs${RESET}" "List organizations (with --user, scope limited to user)" "$w"
    print_row "${BLUE}get ${CYAN}repos${RESET}" "List remote repos per org; shows cloned/not cloned" "$w"
    print_row "${BLUE}show ${CYAN}repos${RESET}" "Inspect local repos: branch, state, and remote existence" "$w"
    print_row "${BLUE}completion${RESET}" "Output Bash completion script (stdout). Use variants below." "$w"
    print_row "${BLUE}install ${CYAN}completion${RESET}" "Output Bash completion (stdout) — redirect and source" "$w"
    print_row "${BLUE}install ${CYAN}completion zsh${RESET}" "Output Zsh completion — save as ${YELLOW}~/.zsh/completions/_ogit_sh${RESET}" "$w"
    print_row "${BLUE}install ${CYAN}completion fish${RESET}" "Output Fish completion — save as ${YELLOW}~/.config/fish/completions/ogit.fish${RESET}" "$w"
    echo
    exit "$exit_code"
}

# Argument parsing
#
while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help)
        usage 0
        exit 0
        ;;
        --user)
        option_user=true
        shift
        ;;        
        --orgs)
        if [[ -n "$2" && "$2" != -* ]]; then
            option_orgs="$2"
            shift 2
        else
            print_error "--orgs requires an argument." 3
            usage 3
        fi
        ;;
        --exorgs)
        if [[ -n "$2" && "$2" != -* ]]; then
            option_exorgs="$2"
            shift 2
        else
            print_error "--exorgs requires an argument." 3
            usage 3
        fi
        ;;
        --repos)
        if [[ -n "$2" && "$2" != -* ]]; then
            option_repos="$2"
            shift 2
        else
            print_error "--repos requires an argument." 3
            usage 3
        fi
        ;;
        --dir)
        if [[ -n "$2" && "$2" != -* && -d "$2" ]]; then
            option_dir="$2"
            shift 2
        else
            print_error "--dir requires an existing directory path as argument." 3
            usage 3
        fi
        ;;
        --summary-only)
        option_summary_only=true
        shift
        ;;
        --no-header)
        option_no_header=true
        shift
        ;;
        --format)
        if [[ -n "$2" && "$2" != -* ]]; then
            case "$2" in
                csv|json)
                    option_format="$2"; shift 2;;
                *)
                    print_error "--format accepts csv or json." 3
                    usage 3
                    ;;
            esac
        else
            print_error "--format requires an argument." 3
            usage 3
        fi
        ;;
        --format-header)
        option_format_header=true
        shift
        ;;
        --pretty-json)
        option_pretty_json=true
        shift
        ;;
        --)
        shift
        break
        ;;
        -*)
        print_error "Unknown option: $1" 2
        usage 2
        ;;
        *)
        # Stop processing options when positional arguments are encountered
        break
        ;;
    esac
done
#________________________________________________________________________
# Get all arguments
#
i=1
ARG_COUNT=$#
for arg in "$@"; do
    if [[ ! ${COMMANDS_LIST[@]} =~ "$arg" ]]; then
        print_error "invalid command." 4
        usage 4
    fi
    # Assign each argument to a variable like var1, var2, etc.
    eval "ARG$i='$arg'"
    i=$((i + 1))
done

#________________________________________________________________________

# Check if user is logged in
#
is_logged() {
    gh auth status
}

# login to github
#
login() {
    echo "╭───────────login:"
    if gh auth status >/dev/null 2>&1; then
        local USERNAME=$(get_user)
        info_str="${BLUE}{${RESET} status: ${GREEN}Already authenticated${RESET} ${BLUE}}${RESET}"
        printf "│ %s %s\n" "$USERNAME" "$info_str"
        echo "╰──────────────────────────────╯"
        return 0
    fi

    if gh auth login; then
        local USERNAME=$(get_user)
        info_str="${BLUE}{${RESET} status: ${GREEN}Authenticated${RESET} ${BLUE}}${RESET}"
        printf "│ %s %s\n" "$USERNAME" "$info_str"
    else
        info_str="${BLUE}{${RESET} status: ${RED}Login failed${RESET} ${BLUE}}${RESET}"
        printf "│ %s\n" "$info_str"
        echo "╰──────────────────────────────╯"
        return 1
    fi
    echo "╰──────────────────────────────╯"
}

# Get User
#
get_user() {
    gh api user --jq ".login"
}

# Pretty print user with authentication status
#
show_user_pretty() {
    local USERNAME=$(get_user)
    local status="Not authenticated"
    local status_color="$RED"
    if gh auth status >/dev/null 2>&1; then
        status="Authenticated"
        status_color="$GREEN"
    fi
    echo "╭───────────user:"
    info_str="${BLUE}{${RESET} status: ${status_color}${status}${RESET} ${BLUE}}${RESET}"
    printf "│ %s %s\n" "$USERNAME" "$info_str"
    echo "╰──────────────────────────────╯"
}

# Get all organizations of logged user\
#
get_orgs() {
    ORGS=$(get_user)
    if [[ $option_user == true ]]; then
        echo $ORGS
    else
        echo $ORGS && gh api /user/orgs --jq ".[].login"
    fi
}

# Pretty print organizations with aligned, colored info
#
show_orgs_pretty() {
    local USERNAME=$(get_user)
    local ORG_LIST=""
    if [[ $option_user == true ]]; then
        ORG_LIST="$USERNAME"
    else
        ORG_LIST="$USERNAME $(gh api /user/orgs --jq '.[].login')"
    fi

    # Build list with filters applied
    orgs_to_show=()
    for ORGANIZATION in $ORG_LIST; do
        if check_organization "$ORGANIZATION"; then
            orgs_to_show+=("$ORGANIZATION")
        fi
    done

    # Alignment width
    max_len=0
    for o in "${orgs_to_show[@]}"; do
        (( ${#o} > max_len )) && max_len=${#o}
    done

    echo "╭───────────organizations:"
    for ORGANIZATION in "${orgs_to_show[@]}"; do
        type_label="Org"
        type_color="$CYAN"
        if [[ "$ORGANIZATION" == "$USERNAME" ]]; then
            type_label="User"
            type_color="$MAGENTA"
        fi
        info_str="${BLUE}{${RESET} type: ${type_color}${type_label}${RESET} ${BLUE}}${RESET}"
        printf "│ %-${max_len}s %s\n" "$ORGANIZATION" "$info_str"
    done
    echo "╰──────────────────────────────╯"
}

# Get all repositories in given organisation
#
get_repos() {
    local ORGANIZATION=$1

    gh repo list "$ORGANIZATION" --limit 100 --json name -q '.[].name'
}

# Clone a repository in an organization
#
clone_repository() {
    local ORGANIZATION=$1
    local REPOSITORY=$2
    if [[ ! -d  "$option_dir/$ORGANIZATION/$REPOSITORY" ]]; then
        gh repo clone "$ORGANIZATION/$REPOSITORY" "$option_dir/$ORGANIZATION/$REPOSITORY" 
        info_str="${BLUE}{${RESET} status: ${GREEN}Cloned${RESET} ${BLUE}}${RESET}"
        printf "│ %s %s\n" "$REPOSITORY" "$info_str"
    else
        info_str="${BLUE}{${RESET} status: ${YELLOW}Exists${RESET} ${BLUE}}${RESET}"
        printf "│ %s %s\n" "$REPOSITORY" "$info_str"
    fi
}

# Generate Bash completion script content
#
generate_bash_completion() {
    cat <<'EOF'
# Bash completion for ogit.sh
_ogit_sh_completion() {
    local cur prev words cword
    COMPREPLY=()
    _get_comp_words_by_ref -n : cur prev words cword 2>/dev/null || {
        cur=${COMP_WORDS[COMP_CWORD]}
        prev=${COMP_WORDS[COMP_CWORD-1]}
        words=("${COMP_WORDS[@]}")
        cword=${COMP_CWORD}
    }

    local options="-h --help --user --orgs --exorgs --repos --dir --summary-only --no-header --format --format-header --pretty-json --"
    local commands="login create get show install completion"

    # Helper: check presence in words
    _has_word() {
        local needle="$1"; shift
        for w in "${words[@]}"; do [[ "$w" == "$needle" ]] && return 0; done
        return 1
    }

    # Helper: value after flag
    _value_after() {
        local flag="$1"; shift
        for ((i=0; i<${#words[@]}; i++)); do
            if [[ "${words[$i]}" == "$flag" ]]; then
                echo "${words[$((i+1))]}"
                return 0
            fi
        done
        return 1
    }

    # Complete option values
    if [[ "$prev" == "--dir" ]]; then
        COMPREPLY=( $(compgen -d -- "$cur") )
        return 0
    fi

    if [[ "$prev" == "--orgs" || "$prev" == "--exorgs" ]]; then
        local username=$(gh api user --jq '.login' 2>/dev/null)
        local orgs=$(gh api /user/orgs --jq '.[].login' 2>/dev/null)
        COMPREPLY=( $(compgen -W "$username $orgs" -- "$cur") )
        return 0
    fi

    if [[ "$prev" == "--repos" ]]; then
        local org_arg=$(_value_after --orgs)
        local only_user=false
        _has_word --user && only_user=true
        local owners=""
        if [[ -n "$org_arg" ]]; then
            owners=$(echo "$org_arg" | tr ',' ' ')
        elif [[ "$only_user" == true ]]; then
            owners=$(gh api user --jq '.login' 2>/dev/null)
        else
            local username=$(gh api user --jq '.login' 2>/dev/null)
            local orgs=$(gh api /user/orgs --jq '.[].login' 2>/dev/null)
            owners="$username $orgs"
        fi
        local repo_names=""
        for owner in $owners; do
            repo_names+=" $(gh repo list "$owner" --limit 100 --json name -q '.[].name' 2>/dev/null)"
        done
        COMPREPLY=( $(compgen -W "$repo_names" -- "$cur") )
        return 0
    fi

    if [[ "$prev" == "--format" ]]; then
        COMPREPLY=( $(compgen -W "csv json" -- "$cur") )
        return 0
    fi

    # If completing options (start with '-')
    if [[ "$cur" == -* ]]; then
        COMPREPLY=( $(compgen -W "$options" -- "$cur") )
        return 0
    fi

    # Determine the primary command (first non-option token after program name)
    local primary=""
    local i
    for ((i=1; i<${#words[@]}; i++)); do
        local w="${words[$i]}"
        [[ "$w" == -* ]] && continue
        primary="$w"
        break
    done

    # No primary yet: suggest top-level commands
    if [[ -z "$primary" || "$primary" == "$cur" ]]; then
        COMPREPLY=( $(compgen -W "$commands" -- "$cur") )
        return 0
    fi

    # Subcommand suggestions
    case "$primary" in
        create)
            local subs="workplace"
            COMPREPLY=( $(compgen -W "$subs" -- "$cur") )
            ;;
        get|show)
            local subs="user orgs repos"
            COMPREPLY=( $(compgen -W "$subs" -- "$cur") )
            ;;
        install)
            local subs="completion"
            COMPREPLY=( $(compgen -W "$subs" -- "$cur") )
            ;;
        completion)
            COMPREPLY=()
            ;;
        *)
            COMPREPLY=()
            ;;
    esac
    return 0
}
# Register for common invocations
complete -o filenames -F _ogit_sh_completion ogit.sh
complete -o filenames -F _ogit_sh_completion ogit
EOF
}

# Generate Zsh completion script content
#
generate_zsh_completion() {
    cat <<'EOF'
_ogit_sh() {
    local -a _options
    _options=(
        '-h[show help]'
        '--help[show help]'
        '--user[only user repos]'
        '--orgs[select organizations]:organization:( $(gh api user --jq .login 2>/dev/null) $(gh api /user/orgs --jq '.[].login' 2>/dev/null) )'
        '--exorgs[exclude organizations]:organization:( $(gh api user --jq .login 2>/dev/null) $(gh api /user/orgs --jq '.[].login' 2>/dev/null) )'
        '--repos[select repositories]:repository:( ${(f)"$(
                owners="";
                for i in {1..$#words}; do
                    if [[ ${words[i]} == --orgs ]]; then owners=${words[i+1]}; break; fi
                done;
                if [[ -n $owners ]]; then owners=${owners//,/ };
                else
                    if [[ ${words[(I)--user]} -gt 0 ]]; then owners=$(gh api user --jq .login 2>/dev/null);
                    else owners="$(gh api user --jq .login 2>/dev/null) $(gh api /user/orgs --jq '.[].login' 2>/dev/null)"; fi;
                fi;
                repos="";
                for o in $owners; do repos+=" $(gh repo list $o --limit 100 --json name -q '.[].name' 2>/dev/null)"; done;
                echo $repos
            )" } )'
        '--dir[target directory]:directory:_path_files -/'
        '--summary-only[print only per-org summaries]'
        '--no-header[suppress header box lines]'
        '--format-header[print CSV header with --format=csv]'
        '--pretty-json[indented JSON with --format=json]'
        '--format[output format]:format:(csv json)'
        '--[stop parsing options]'
    )

    local -a _commands
    _commands=(
        'login:authenticate with GitHub'
        'create:create subcommands'
        'get:get subcommands'
        'show:show subcommands'
        'install:install subcommands'
        'completion:output completion scripts'
    )

    local -a _create_subs; _create_subs=('workplace:clone repositories')
    local -a _get_show_subs; _get_show_subs=('user:show username' 'orgs:list organizations' 'repos:list repositories')
    local -a _install_subs; _install_subs=('completion:install completion (bash|zsh|fish)')

    _arguments -s -S : \
        '1:command:(( ${_commands} ))' \
        '*::args:->subcmds' \
        ${_options} && return

    case $words[1] in
        create)
            _describe -t subcommands 'create subcommands' _create_subs && return ;;
        get|show)
            _describe -t subcommands 'subcommands' _get_show_subs && return ;;
        install)
            _describe -t subcommands 'install subcommands' _install_subs && return ;;
        completion)
            _values 'completion variants' bash zsh fish && return ;;
    esac
}
EOF
}

# Generate Fish completion script content
#
generate_fish_completion() {
    cat <<'EOF'
# Fish completion for ogit.sh
complete -c ogit.sh -n '__fish_use_subcommand' -a 'login create get show install completion'
complete -c ogit -n '__fish_use_subcommand' -a 'login create get show install completion'

# Options
complete -c ogit.sh -s h -l help -d 'Show help'
complete -c ogit.sh -l user -d 'Only user repos'
complete -c ogit.sh -l orgs -d 'Select organizations' -a '(gh api user --jq '\''\.login'\'' 2>/dev/null; gh api /user/orgs --jq '\''\.[\].login'\'' 2>/dev/null)'
complete -c ogit.sh -l exorgs -d 'Exclude organizations' -a '(gh api user --jq '\''\.login'\'' 2>/dev/null; gh api /user/orgs --jq '\''\.[\].login'\'' 2>/dev/null)'
complete -c ogit.sh -l repos -d 'Select repositories' -a '(set -l owners (argparse --name=ogit --stop --orgs >/dev/null; and echo $argv[2]); if test -n "$owners"; set owners (string split , $owners); else if contains -- --user $argv; set owners (gh api user --jq '\''\.login'\'' 2>/dev/null); else set owners (gh api user --jq '\''\.login'\'' 2>/dev/null) (gh api /user/orgs --jq '\''\.[\].login'\'' 2>/dev/null); end; for o in $owners; gh repo list $o --limit 100 --json name -q '\''\.[\].name'\'' 2>/dev/null; end)'
complete -c ogit.sh -l dir -d 'Target directory' -a '(__fish_complete_directories)'
complete -c ogit.sh -l summary-only -d 'Only per-org summaries'
complete -c ogit.sh -l no-header -d 'Suppress header box lines'
complete -c ogit.sh -l format -d 'Output format' -a 'csv json'
complete -c ogit.sh -l format-header -d 'Print CSV header when using --format=csv'
complete -c ogit.sh -l pretty-json -d 'Indented JSON when using --format=json'

# Subcommands
complete -c ogit.sh -n '__fish_seen_subcommand_from create' -a 'workplace'
complete -c ogit.sh -n '__fish_seen_subcommand_from get' -a 'user orgs repos'
complete -c ogit.sh -n '__fish_seen_subcommand_from show' -a 'user orgs repos'
complete -c ogit.sh -n '__fish_seen_subcommand_from install' -a 'completion'
complete -c ogit.sh -n '__fish_seen_subcommand_from completion' -a 'bash zsh fish'
EOF
}

# Install Bash completion to user's local directory
#
install_completion() {
    # Print the Bash completion script to stdout; user decides where to save/source it.
    generate_bash_completion
}

# Install Zsh completion to user's local directory
#
install_zsh_completion() {
    # Print the Zsh completion script to stdout; user decides where to save/source it.
    generate_zsh_completion
}

# Install Fish completion to user's configuration
#
install_fish_completion() {
    # Print the Fish completion script to stdout; user decides where to save it.
    generate_fish_completion
}

# Check if the organization is in the list of organizations to be included or excluded
#
check_organization() {
    local ORGANIZATION=$1

    if [[ $option_user == true ]]; then
        return 0
    elif [[ ! ${option_exorgs[@]} =~ $ORGANIZATION && (-z $option_orgs || ${option_orgs[@]} =~ $ORGANIZATION ) ]]; then
        return 0
    else
        return 1
    fi
}

# Check if the repository is in the list of repositories to be included or excluded
#
check_repository() {
    local REPOSITORY=$1

    if [[ -z $option_repos || ${option_repos[@]} =~ $REPOSITORY ]]; then
        return 0
    else
        return 1
    fi
}

# Create workplace
#
create_workplace() {
    local ORGANIZATIONS=$(get_orgs)
    local csv_header_printed=false

    for ORGANIZATION in $ORGANIZATIONS; do
        if check_organization $ORGANIZATION; then
            REPOSITORIES=$(get_repos $ORGANIZATION)
            if [[ "$option_no_header" != true ]]; then
                echo "╭───────────$ORGANIZATION:"
            fi
            # Collect repos for alignment
            repos_to_show=()
            for REPOSITORY in $REPOSITORIES; do
                if check_repository $REPOSITORY; then
                    repos_to_show+=("$REPOSITORY")
                fi
            done
            # Compute max repo name length for alignment
            max_len=0
            for r in "${repos_to_show[@]}"; do
                (( ${#r} > max_len )) && max_len=${#r}
            done
            # Summary counters
            cloned_count=0
            exists_count=0
            # Clone if needed and optionally print aligned, colored status
            for REPOSITORY in $REPOSITORIES; do
                if check_repository $REPOSITORY; then
                    if [[ ! -d  "$option_dir/$ORGANIZATION/$REPOSITORY" ]]; then
                        gh repo clone "$ORGANIZATION/$REPOSITORY" "$option_dir/$ORGANIZATION/$REPOSITORY" -- --quiet
                        cloned_state="Cloned"
                        state_color="$GREEN"
                        cloned_count=$((cloned_count + 1))
                    else
                        cloned_state="Exists"
                        state_color="$YELLOW"
                        exists_count=$((exists_count + 1))
                    fi
                    if [[ "$option_summary_only" != true ]]; then
                        info_str="${BLUE}{${RESET} status: ${state_color}${cloned_state}${RESET} ${BLUE}}${RESET}"
                        printf "│ %-${max_len}s %s\n" "$REPOSITORY" "$info_str"
                    fi
                fi
            done;
            total_count=$((cloned_count + exists_count))
            if [[ "$option_format" == "json" ]]; then
                if [[ "$option_pretty_json" == true ]]; then
                    printf '{\n  "organization": "%s",\n  "cloned": %d,\n  "exists": %d,\n  "total": %d\n}\n' "$ORGANIZATION" "$cloned_count" "$exists_count" "$total_count"
                else
                    printf '{"organization":"%s","cloned":%d,"exists":%d,"total":%d}\n' "$ORGANIZATION" "$cloned_count" "$exists_count" "$total_count"
                fi
            elif [[ "$option_format" == "csv" ]]; then
                if [[ "$option_format_header" == true && "$csv_header_printed" == false ]]; then
                    printf 'organization,cloned,exists,total\n'
                    csv_header_printed=true
                fi
                printf '%s,%d,%d,%d\n' "$ORGANIZATION" "$cloned_count" "$exists_count" "$total_count"
            else
                summary_str="${BLUE}{${RESET} cloned: ${GREEN}${cloned_count}${RESET}, exists: ${YELLOW}${exists_count}${RESET}, total: ${CYAN}${total_count}${RESET} ${BLUE}}${RESET}"
                if [[ "$option_no_header" == true ]]; then
                    printf "%s\n" "$summary_str"
                else
                    printf "╰────────────────────────────── %s\n" "$summary_str"
                fi
            fi
        fi
    done;
}

# Show repositories
#
show_repositories() {
    local ORGANIZATIONS=$(get_orgs)
    local csv_header_printed=false

    for ORGANIZATION in $ORGANIZATIONS; do
        if check_organization $ORGANIZATION; then
            if [[ "$option_no_header" != true ]]; then
                echo "╭───────────$ORGANIZATION:"
            fi
            REPOSITORIES=$(get_repos $ORGANIZATION)
            # Collect repos for alignment
            repos_to_show=()
            for REPOSITORY in $REPOSITORIES; do
                if check_repository $REPOSITORY; then
                    repos_to_show+=("$REPOSITORY")
                fi
            done
            # Compute max repo name length for alignment
            max_len=0
            for r in "${repos_to_show[@]}"; do
                (( ${#r} > max_len )) && max_len=${#r}
            done
            # Summary counters
            cloned_count=0
            not_cloned_count=0
            # Print aligned, colored info (optional)
            for REPOSITORY in $REPOSITORIES; do
                if check_repository $REPOSITORY; then
                    if [[ -d "$option_dir/$ORGANIZATION/$REPOSITORY" ]]; then
                        cloned_state="Cloned"
                        state_color="$GREEN"
                        cloned_count=$((cloned_count + 1))
                    else
                        cloned_state="Not cloned"
                        state_color="$RED"
                        not_cloned_count=$((not_cloned_count + 1))
                    fi
                    if [[ "$option_summary_only" != true ]]; then
                        info_str="${BLUE}{${RESET} cloned: ${state_color}${cloned_state}${RESET} ${BLUE}}${RESET}"
                        printf "│ %-${max_len}s %s\n" "$REPOSITORY" "$info_str"
                    fi
                fi
            done;
            total_count=$((cloned_count + not_cloned_count))
            if [[ "$option_format" == "json" ]]; then
                if [[ "$option_pretty_json" == true ]]; then
                    printf '{\n  "organization": "%s",\n  "cloned": %d,\n  "not_cloned": %d,\n  "total": %d\n}\n' "$ORGANIZATION" "$cloned_count" "$not_cloned_count" "$total_count"
                else
                    printf '{"organization":"%s","cloned":%d,"not_cloned":%d,"total":%d}\n' "$ORGANIZATION" "$cloned_count" "$not_cloned_count" "$total_count"
                fi
            elif [[ "$option_format" == "csv" ]]; then
                if [[ "$option_format_header" == true && "$csv_header_printed" == false ]]; then
                    printf 'organization,cloned,not_cloned,total\n'
                    csv_header_printed=true
                fi
                printf '%s,%d,%d,%d\n' "$ORGANIZATION" "$cloned_count" "$not_cloned_count" "$total_count"
            else
                summary_str="${BLUE}{${RESET} cloned: ${GREEN}${cloned_count}${RESET}, not-cloned: ${RED}${not_cloned_count}${RESET}, total: ${CYAN}${total_count}${RESET} ${BLUE}}${RESET}"
                if [[ "$option_no_header" == true ]]; then
                    printf "%s\n" "$summary_str"
                else
                    printf "╰────────────────────────────── %s\n" "$summary_str"
                fi
            fi

        fi
    done;
}

# Show local repositories: branch + git state + remote existence
#
show_local_repositories_status() {
    if [[ ! -d "$option_dir" ]]; then
        print_error "target directory $option_dir not found." 5
        exit 5
    fi

    for ORG_DIR in "$option_dir"/*; do
        [[ -d "$ORG_DIR" ]] || continue
        ORGANIZATION="${ORG_DIR##*/}"
        if check_organization "$ORGANIZATION"; then
            if [[ "$option_no_header" != true ]]; then
                echo "╭───────────$ORGANIZATION:"
            fi
            local csv_header_printed=false
            # Summary counters
            clean_count=0
            staged_count_sum=0
            unstaged_count_sum=0
            both_count=0
            remote_missing_count=0
            not_git_count=0
            # Collect repos for alignment
            repos_to_show=()
            for REPO_DIR in "$ORG_DIR"/*; do
                [[ -d "$REPO_DIR" ]] || continue
                REPOSITORY="${REPO_DIR##*/}"
                if check_repository "$REPOSITORY"; then
                    repos_to_show+=("$REPOSITORY")
                fi
            done
            # Compute max repo name length for alignment
            max_len=0
            for r in "${repos_to_show[@]}"; do
                (( ${#r} > max_len )) && max_len=${#r}
            done
            # Print aligned, colored info (optional)
            for REPO_DIR in "$ORG_DIR"/*; do
                [[ -d "$REPO_DIR" ]] || continue
                REPOSITORY="${REPO_DIR##*/}"
                if check_repository "$REPOSITORY"; then
                    branch="-"
                    local_status="Not a git repo"
                    if [[ -d "$REPO_DIR/.git" ]]; then
                        branch=$(git -C "$REPO_DIR" rev-parse --abbrev-ref HEAD 2>/dev/null)
                        porcelain=$(git -C "$REPO_DIR" status --porcelain 2>/dev/null)
                        if [[ -z "$porcelain" ]]; then
                            local_status="Clean"
                            clean_count=$((clean_count + 1))
                        else
                            staged_count=$(echo "$porcelain" | awk 'substr($0,1,1)!=" " && substr($0,1,2)!="??"' | wc -l)
                            unstaged_count=$(echo "$porcelain" | awk 'substr($0,2,1)!=" " || substr($0,1,2)=="??"' | wc -l)
                            if [[ ${staged_count:-0} -gt 0 && ${unstaged_count:-0} -gt 0 ]]; then
                                local_status="Staged & Unstaged changes"
                                both_count=$((both_count + 1))
                            elif [[ ${staged_count:-0} -gt 0 ]]; then
                                local_status="Staged changes"
                                staged_count_sum=$((staged_count_sum + 1))
                            else
                                local_status="Unstaged changes"
                                unstaged_count_sum=$((unstaged_count_sum + 1))
                            fi
                        fi
                    else
                        not_git_count=$((not_git_count + 1))
                    fi

                    if gh repo view "$ORGANIZATION/$REPOSITORY" >/dev/null 2>&1; then
                        state="$local_status"
                    else
                        state="Remote missing"
                        remote_missing_count=$((remote_missing_count + 1))
                    fi

                    # Choose state color
                    state_color="$CYAN"
                    case "$state" in
                        "Clean") state_color="$GREEN";;
                        "Staged changes") state_color="$YELLOW";;
                        "Unstaged changes") state_color="$RED";;
                        "Staged & Unstaged changes") state_color="$MAGENTA";;
                        "Remote missing") state_color="$RED";;
                    esac

                    if [[ "$option_summary_only" != true ]]; then
                        info_str="${BLUE}{${RESET} branch: ${CYAN}${branch}${RESET}, state: ${state_color}${state}${RESET} ${BLUE}}${RESET}"
                        printf "│ %-${max_len}s %s\n" "$REPOSITORY" "$info_str"
                    fi
                fi
            done
            total_local=$((clean_count + staged_count_sum + unstaged_count_sum + both_count + not_git_count))
            if [[ "$option_format" == "json" ]]; then
                if [[ "$option_pretty_json" == true ]]; then
                    printf '{\n  "organization": "%s",\n  "clean": %d,\n  "staged": %d,\n  "unstaged": %d,\n  "both": %d,\n  "not_git": %d,\n  "remote_missing": %d,\n  "total": %d\n}\n' "$ORGANIZATION" "$clean_count" "$staged_count_sum" "$unstaged_count_sum" "$both_count" "$not_git_count" "$remote_missing_count" "$total_local"
                else
                    printf '{"organization":"%s","clean":%d,"staged":%d,"unstaged":%d,"both":%d,"not_git":%d,"remote_missing":%d,"total":%d}\n' "$ORGANIZATION" "$clean_count" "$staged_count_sum" "$unstaged_count_sum" "$both_count" "$not_git_count" "$remote_missing_count" "$total_local"
                fi
            elif [[ "$option_format" == "csv" ]]; then
                if [[ "$option_format_header" == true && "$csv_header_printed" == false ]]; then
                    printf 'organization,clean,staged,unstaged,both,not_git,remote_missing,total\n'
                    csv_header_printed=true
                fi
                printf '%s,%d,%d,%d,%d,%d,%d,%d\n' "$ORGANIZATION" "$clean_count" "$staged_count_sum" "$unstaged_count_sum" "$both_count" "$not_git_count" "$remote_missing_count" "$total_local"
            else
                summary_str="${BLUE}{${RESET} clean: ${GREEN}${clean_count}${RESET}, staged: ${YELLOW}${staged_count_sum}${RESET}, unstaged: ${RED}${unstaged_count_sum}${RESET}, both: ${MAGENTA}${both_count}${RESET}, not-git: ${CYAN}${not_git_count}${RESET}, remote-missing: ${RED}${remote_missing_count}${RESET}, total: ${CYAN}${total_local}${RESET} ${BLUE}}${RESET}"
                if [[ "$option_no_header" == true ]]; then
                    printf "%s\n" "$summary_str"
                else
                    printf "╰────────────────────────────── %s\n" "$summary_str"
                fi
            fi
        fi
    done
}

#________________________________________________________________________
# Run appropriate command
#
if [[ "$ARG_COUNT" = "1" && "$ARG1" = "login" ]]; then
    login
    exit 0
fi

if [[ "$ARG_COUNT" = "1" && "$ARG1" = "completion" ]]; then
    generate_bash_completion
    exit 0
fi

if [[ "$ARG_COUNT" = "2" ]]; then
    if [[ "$ARG1" == "create" && "$ARG2" == "workplace" ]]; then
        create_workplace
        exit 0
    elif [[ "$ARG1" == "install" && "$ARG2" == "completion" ]]; then
        install_completion
        exit 0
    elif [[ "$ARG1" == "get" ]]; then
        if [[ "$ARG2" == "user" ]]; then
            show_user_pretty
            exit 0
        elif [[ "$ARG2" == "orgs" ]]; then
            show_orgs_pretty
            exit 0
        elif [[ "$ARG2" == "repos" ]]; then
            show_repositories
            exit 0
        fi
    elif [[ "$ARG1" == "show" ]]; then
        if [[ "$ARG2" == "user" ]]; then
            show_user_pretty
            exit 0
        elif [[ "$ARG2" == "orgs" ]]; then
            show_orgs_pretty
            exit 0
        elif [[ "$ARG2" == "repos" ]]; then
            show_local_repositories_status
            exit 0
        fi
    elif [[ "$ARG1" == "completion" ]]; then
        if [[ "$ARG2" == "zsh" ]]; then
            generate_zsh_completion
            exit 0
        elif [[ "$ARG2" == "fish" ]]; then
            generate_fish_completion
            exit 0
        fi
    fi
fi

if [[ "$ARG_COUNT" = "3" ]]; then
    if [[ "$ARG1" == "install" && "$ARG2" == "completion" ]]; then
        if [[ "$ARG3" == "zsh" ]]; then
            install_zsh_completion
            exit 0
        elif [[ "$ARG3" == "fish" ]]; then
            install_fish_completion
            exit 0
        fi
    fi
fi
print_error "Invalid command." 4
usage

