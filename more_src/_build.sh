#compdef build.sh
# Source: https://github.com/Raudbjorn/gaud/blob/e13f7ef05c25596c63c718725877331dc6b320f4/build.sh
# Repository: Raudbjorn/gaud (build.sh)
#!/bin/bash

# Gaud - Multi-user LLM Proxy Build Script
# Pure Rust server (no Tauri, no frontend)

set -eo pipefail  # Exit on error, catch pipeline failures

# Script version
SCRIPT_VERSION="1.0.0"

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Emojis for better UX
ROCKET="🚀"
CHECK="✅"
CROSS="❌"
WARNING="⚠️"
GEAR="⚙️"
CLOCK="⏱️"

# Project paths
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Extract project metadata from Cargo.toml
PROJECT_NAME="gaud"
PROJECT_VERSION=$(grep -E '^version\s*=' "$PROJECT_ROOT/Cargo.toml" 2>/dev/null | head -1 | sed 's/.*=\s*"\([^"]*\)".*/\1/') || PROJECT_VERSION="unknown"

# CI/CD detection - auto-configure for non-interactive environments
if [ -n "$CI" ] || [ -n "$GITHUB_ACTIONS" ] || [ -n "$GITLAB_CI" ] || [ -n "$JENKINS_URL" ]; then
    CI_MODE=true
    FORCE_CLEAN=true
    # Disable colors in CI (unless FORCE_COLOR is set)
    if [ -z "$FORCE_COLOR" ]; then
        RED=''; GREEN=''; YELLOW=''; BLUE=''; PURPLE=''; CYAN=''; NC=''
        ROCKET='>>'; CHECK='OK'; CROSS='FAIL'; WARNING='WARN'; GEAR='::'; CLOCK='::'
    fi
else
    CI_MODE=false
fi

# Timing support
BUILD_START_TIME=$SECONDS
STEP_TIMES=()

# Signal handling for clean exit
cleanup() {
    local exit_code=$?
    if [ $exit_code -ne 0 ] && [ $exit_code -ne 130 ]; then
        print_error "Build failed with exit code $exit_code"
    fi
    # Kill any background processes started by this script
    local pids
    pids=$(jobs -p 2>/dev/null)
    [ -n "$pids" ] && echo "$pids" | xargs kill 2>/dev/null || true
    exit $exit_code
}
trap cleanup EXIT

# Global caching support
setup_global_cache() {
    if command_exists sccache; then
        export RUSTC_WRAPPER=sccache
        print_info "Global caching enabled via sccache"
    else
        print_warning "sccache not found - global caching disabled"
    fi
}

# Initialize global cache
setup_global_cache

interrupt_handler() {
    echo ""
    print_warning "Interrupted by user (Ctrl+C)"
    exit 130
}
trap interrupt_handler INT TERM

print_header() {
    echo -e "\n${PURPLE}╔═══════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${PURPLE}║          Gaud - Multi-user LLM Proxy Build System            ║${NC}"
    echo -e "${PURPLE}║          v${PROJECT_VERSION}                                              ║${NC}"
    echo -e "${PURPLE}╚═══════════════════════════════════════════════════════════════╝${NC}"

    # Show git/GitHub status warnings
    check_git_status
}

# Git repository status check
check_git_status() {
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        return 0  # Not a git repo, skip checks
    fi

    local warnings=()

    # Check for uncommitted changes
    local uncommitted=0
    uncommitted=$(git status --porcelain 2>/dev/null | wc -l) || uncommitted=0
    if [ "$uncommitted" -gt 20 ]; then
        warnings+=("🔄 You have $uncommitted uncommitted changes - consider committing or stashing")
    elif [ "$uncommitted" -gt 5 ]; then
        warnings+=("📝 You have $uncommitted uncommitted changes")
    fi

    # Check for unpushed commits and branch divergence
    local current_branch=""
    current_branch=$(git branch --show-current 2>/dev/null) || current_branch=""
    if [ -n "$current_branch" ]; then
        local unpushed=0
        unpushed=$(git rev-list --count '@{u}..HEAD' 2>/dev/null) || unpushed=0
        if [ "$unpushed" -gt 0 ]; then
            warnings+=("📤 You have $unpushed unpushed commits on branch '$current_branch'")
        fi

        # Check if branch is behind main/master
        check_branch_divergence warnings "$current_branch"
    fi

    # Check for GitHub status (if gh CLI is available)
    if command_exists gh; then
        check_github_status warnings
    fi

    # Display warnings if any
    if [ ${#warnings[@]} -gt 0 ]; then
        echo -e "\n${YELLOW}${WARNING} Git Status Notifications:${NC}"
        for warning in "${warnings[@]}"; do
            echo -e "  ${YELLOW}$warning${NC}"
        done
        echo ""
    fi
}

# Check branch divergence from main/master
# Note: Uses eval-based array manipulation for bash 4.0+ compatibility
check_branch_divergence() {
    # shellcheck disable=SC2178
    local warnings_array_name=$1
    local current_branch=$2

    # Skip if we're on main/master
    if [[ "$current_branch" == "main" || "$current_branch" == "master" ]]; then
        return 0
    fi

    # Find the default branch
    local default_branch=""
    if git show-ref --verify --quiet refs/heads/main; then
        default_branch="main"
    elif git show-ref --verify --quiet refs/heads/master; then
        default_branch="master"
    else
        return 0
    fi

    # Check how far behind we are
    local behind=0
    behind=$(git rev-list --count HEAD.."$default_branch" 2>/dev/null) || behind=0

    if [ "$behind" -gt 20 ]; then
        eval "$warnings_array_name+=('📉 Branch '\''$current_branch'\'' is $behind commits behind '\''$default_branch'\'' - consider rebasing')"
    elif [ "$behind" -gt 5 ]; then
        eval "$warnings_array_name+=('📋 Branch '\''$current_branch'\'' is $behind commits behind '\''$default_branch'\''')"
    fi
}

# GitHub CLI integration for PR checks
check_github_status() {
    # shellcheck disable=SC2178
    local warnings_array_name=$1

    # Check if we're in a GitHub repo
    local github_repo=""
    github_repo=$(gh repo view --json nameWithOwner --jq .nameWithOwner 2>/dev/null) || github_repo=""
    if [ -z "$github_repo" ]; then
        return 0
    fi

    # Check for open pull requests
    local pr_count=0
    pr_count=$(gh pr list --state open --json number 2>/dev/null | jq length 2>/dev/null) || pr_count=0

    if [ "$pr_count" -gt 0 ]; then
        eval "$warnings_array_name+=('🔀 There are $pr_count open pull request(s) in $github_repo')"
    fi

    # Check for failed CI/CD runs on current branch
    local current_branch=""
    current_branch=$(git branch --show-current 2>/dev/null) || current_branch=""
    if [ -n "$current_branch" ]; then
        local failed_runs=0
        failed_runs=$(gh run list --branch "$current_branch" --status failure --limit 3 --json conclusion 2>/dev/null | jq length 2>/dev/null) || failed_runs=0
        if [ "$failed_runs" -gt 0 ]; then
            eval "$warnings_array_name+=('❌ Recent CI/CD failures on branch '\''$current_branch'\''')"
        fi
    fi
}

print_section() {
    echo -e "\n${CYAN}${GEAR} $1${NC}"
    echo -e "${CYAN}$(printf '%.0s─' {1..80})${NC}"
}

print_success() {
    echo -e "${GREEN}${CHECK} $1${NC}"
}

print_error() {
    echo -e "${RED}${CROSS} $1${NC}" >&2
}

print_warning() {
    echo -e "${YELLOW}${WARNING} $1${NC}"
}

print_info() {
    echo -e "${BLUE}${GEAR} $1${NC}"
}

print_verbose() {
    if [ "$VERBOSE" = true ]; then
        echo -e "${CYAN}  [verbose] $1${NC}"
    fi
}

print_debug() {
    if [ "$DEBUG_MODE" = true ]; then
        echo -e "${PURPLE}  [debug] $1${NC}" >&2
    fi
}

# Timing functions
start_timer() {
    STEP_START_TIME=$SECONDS
}

end_timer() {
    local step_name="$1"
    local elapsed=$((SECONDS - STEP_START_TIME))
    STEP_TIMES+=("$step_name:$elapsed")
    if [ "$VERBOSE" = true ] || [ $elapsed -gt 10 ]; then
        print_info "${CLOCK} $step_name completed in ${elapsed}s"
    fi
}

print_timing_summary() {
    if [ ${#STEP_TIMES[@]} -eq 0 ]; then
        return
    fi

    local total=$((SECONDS - BUILD_START_TIME))
    echo -e "\n${CYAN}${CLOCK} Build Timing Summary:${NC}"
    for entry in "${STEP_TIMES[@]}"; do
        local name="${entry%%:*}"
        local time="${entry##*:}"
        printf "  %-30s %3ds\n" "$name" "$time"
    done
    echo -e "  ${CYAN}$(printf '%.0s─' {1..40})${NC}"
    printf "  ${GREEN}%-30s %3ds${NC}\n" "Total" "$total"
}

# Run command with timing
timed_run() {
    local step_name="$1"
    shift
    start_timer
    "$@"
    end_timer "$step_name"
}

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Compare semantic versions: returns 0 if $1 >= $2
version_gte() {
    [ "$1" = "$(printf '%s\n' "$1" "$2" | sort -V | tail -n1)" ]
}

check_rust_env() {
    print_section "Checking Rust Environment"

    if ! command_exists cargo; then
        print_error "Rust/Cargo is not installed. Please install Rust: https://rustup.rs/"
        exit 1
    fi
    print_success "Cargo: $(cargo --version)"

    if ! command_exists rustc; then
        print_error "rustc not found"
        exit 1
    fi
    print_success "Rustc: $(rustc --version)"

    if command_exists rustfmt; then
        print_success "Rustfmt: $(rustfmt --version 2>/dev/null || echo 'available')"
    else
        print_warning "rustfmt not found - 'format' command won't work"
    fi

    if command_exists cargo-clippy || cargo clippy --version >/dev/null 2>&1; then
        print_success "Clippy: $(cargo clippy --version 2>/dev/null || echo 'available')"
    else
        print_warning "clippy not found - 'lint' command won't work"
    fi
}

run_dev() {
    print_section "Starting Development Server"
    cd "$PROJECT_ROOT"

    local cargo_args=()
    [ -n "$FEATURES" ] && cargo_args+=(--features "$FEATURES")

    if command_exists cargo-watch; then
        print_info "Running with cargo-watch (hot-reload)..."
        local watch_cmd="run"
        [ -n "$FEATURES" ] && watch_cmd="run --features $FEATURES"
        cargo watch -x "$watch_cmd"
    else
        print_warning "cargo-watch not found, using plain cargo run (no hot-reload)"
        print_info "Install with: cargo install cargo-watch"
        cargo run "${cargo_args[@]}"
    fi
}

run_build() {
    print_section "Building ${PROJECT_NAME}"
    cd "$PROJECT_ROOT"

    print_verbose "Release mode: $RELEASE"
    [ -n "$FEATURES" ] && print_verbose "Features: $FEATURES"

    local cargo_args=()
    if [ "$RELEASE" = true ]; then
        cargo_args+=(--release)
    fi
    if [ -n "$FEATURES" ]; then
        cargo_args+=(--features "$FEATURES")
    fi
    if [ "$VERBOSE" = true ]; then
        cargo_args+=(--verbose)
    fi

    cargo build "${cargo_args[@]}"

    if [ "$RELEASE" = true ]; then
        local binary="$PROJECT_ROOT/target/release/$PROJECT_NAME"
        if [ -f "$binary" ]; then
            local size
            size=$(du -h "$binary" | cut -f1)
            print_success "Release binary built: $binary ($size)"
        else
            print_success "Release build completed"
        fi
    else
        print_success "Debug build completed"
    fi
}

run_tests() {
    print_section "Running Tests"
    cd "$PROJECT_ROOT"

    local cargo_args=()
    [ "$VERBOSE" = true ] && cargo_args+=(--verbose)

    print_info "Running all tests (including kiro-gateway-rs)..."
    cargo test --workspace "${cargo_args[@]}"

    print_success "All tests passed"
}

run_check() {
    print_section "Running Checks"
    cd "$PROJECT_ROOT"

    local cargo_args=()
    [ "$VERBOSE" = true ] && cargo_args+=(--verbose)

    cargo check --workspace "${cargo_args[@]}"

    print_success "Checks completed"
}

clean_artifacts() {
    print_section "Cleaning Build Artifacts"
    cd "$PROJECT_ROOT"

    print_info "Running cargo clean..."
    cargo clean 2>/dev/null || true

    # Check for remaining artifacts
    local remaining_artifacts=()
    if [ -d "$PROJECT_ROOT/target" ]; then
        remaining_artifacts+=("$PROJECT_ROOT/target")
    fi

    if [ ${#remaining_artifacts[@]} -gt 0 ]; then
        print_warning "Found ${#remaining_artifacts[@]} remaining artifact(s) after cargo clean:"
        for artifact in "${remaining_artifacts[@]}"; do
            local size
            size=$(du -sh "$artifact" 2>/dev/null | cut -f1) || size="unknown"
            echo -e "  ${YELLOW}→${NC} $artifact ($size)"
        done

        if [ "$FORCE_CLEAN" = true ]; then
            print_info "Force clean enabled, removing all remaining artifacts..."
            for artifact in "${remaining_artifacts[@]}"; do
                rm -rf "$artifact"
                print_success "Removed: $artifact"
            done
        else
            echo ""
            read -rp "Remove these remaining artifacts? [y/N] " response
            case "$response" in
                [yY][eE][sS]|[yY])
                    for artifact in "${remaining_artifacts[@]}"; do
                        rm -rf "$artifact"
                        print_success "Removed: $artifact"
                    done
                    ;;
                *)
                    print_info "Keeping remaining artifacts. Use './build.sh clean --all' to force removal."
                    ;;
            esac
        fi
    fi

    print_success "Clean completed"
}

run_setup() {
    print_section "Setting Up Development Environment"

    # Check Rust toolchain
    if ! command_exists rustup; then
        print_error "rustup not found. Install Rust via: https://rustup.rs/"
        exit 1
    fi
    print_success "rustup: $(rustup --version 2>/dev/null)"

    # Ensure stable toolchain
    print_info "Ensuring stable toolchain..."
    rustup toolchain install stable 2>/dev/null || true
    rustup default stable 2>/dev/null || true

    # Install components
    print_info "Installing clippy and rustfmt..."
    rustup component add clippy rustfmt 2>/dev/null || true

    # Check for optional cargo tools
    local optional_tools=("cargo-watch" "cargo-audit" "cargo-tarpaulin")
    local missing_tools=()

    for tool in "${optional_tools[@]}"; do
        if ! command_exists "$tool"; then
            missing_tools+=("$tool")
        else
            print_success "$tool: installed"
        fi
    done

    if [ ${#missing_tools[@]} -gt 0 ]; then
        print_info "Optional tools not installed: ${missing_tools[*]}"
        if [ "$CI_MODE" = true ]; then
            print_info "Installing missing tools (CI mode)..."
            for tool in "${missing_tools[@]}"; do
                print_info "Installing $tool..."
                cargo install "$tool" --locked 2>/dev/null || print_warning "Failed to install $tool"
            done
        else
            echo -e "\n${YELLOW}Would you like to install missing optional tools? (y/n)${NC}"
            read -r response
            if [[ "$response" =~ ^[Yy]$ ]]; then
                for tool in "${missing_tools[@]}"; do
                    print_info "Installing $tool..."
                    cargo install "$tool" --locked || print_warning "Failed to install $tool"
                done
            fi
        fi
    fi

    print_success "Setup complete! You can now run './build.sh dev' or './build.sh build'"
}

run_lint() {
    print_section "Running Clippy Lints"
    cd "$PROJECT_ROOT"

    local cargo_args=()
    [ "$VERBOSE" = true ] && cargo_args+=(--verbose)

    cargo clippy --workspace "${cargo_args[@]}" -- -D warnings

    print_success "Linting passed"
}

run_format() {
    print_section "Formatting Code"
    cd "$PROJECT_ROOT"

    cargo fmt --all

    print_success "Code formatted"
}

run_format_check() {
    print_section "Checking Code Formatting"
    cd "$PROJECT_ROOT"

    cargo fmt --all --check

    print_success "Formatting check passed"
}

run_audit() {
    print_section "Security Audit"

    if ! command_exists cargo-audit; then
        print_warning "cargo-audit not found. Installing..."
        cargo install cargo-audit --locked || { print_error "Failed to install cargo-audit"; return 1; }
    fi
    print_verbose "Using cargo-audit: $(cargo audit --version 2>/dev/null || echo 'unknown')"

    cd "$PROJECT_ROOT"

    local audit_args=(--deny warnings)
    [ "$VERBOSE" = true ] && audit_args+=(--color always)

    if cargo audit "${audit_args[@]}"; then
        print_success "Security audit passed - no known vulnerabilities"
    else
        print_warning "Security audit found issues"
        return 1
    fi
}

run_doc() {
    print_section "Generating Documentation"
    cd "$PROJECT_ROOT"

    cargo doc --workspace --no-deps --document-private-items ${VERBOSE:+--verbose}

    local doc_path="$PROJECT_ROOT/target/doc/${PROJECT_NAME}/index.html"
    if [ -f "$doc_path" ] && [ "$CI_MODE" != true ]; then
        print_info "Opening documentation in browser..."
        if command_exists xdg-open; then
            xdg-open "$doc_path" 2>/dev/null &
        elif command_exists open; then
            open "$doc_path" 2>/dev/null &
        fi
    fi

    print_success "Documentation generated"
    print_info "Docs: $doc_path"
}

run_coverage() {
    print_section "Code Coverage"

    if ! command_exists cargo-tarpaulin; then
        print_warning "cargo-tarpaulin not found. Installing..."
        cargo install cargo-tarpaulin --locked || { print_error "Failed to install cargo-tarpaulin"; return 1; }
    fi
    print_verbose "Using cargo-tarpaulin: $(cargo tarpaulin --version 2>/dev/null || echo 'unknown')"

    cd "$PROJECT_ROOT"

    local coverage_args=(--workspace --out Html --output-dir target/coverage)
    if [ "$VERBOSE" = true ]; then
        coverage_args+=(--verbose)
    fi

    cargo tarpaulin "${coverage_args[@]}"

    local report_path="$PROJECT_ROOT/target/coverage/tarpaulin-report.html"
    if [ -f "$report_path" ]; then
        print_success "Coverage report generated: $report_path"
        if [ "$CI_MODE" != true ]; then
            if command_exists xdg-open; then
                xdg-open "$report_path" 2>/dev/null &
            elif command_exists open; then
                open "$report_path" 2>/dev/null &
            fi
        fi
    fi
}

run_install() {
    print_section "Building and Installing ${PROJECT_NAME}"

    # Build release binary first
    RELEASE=true
    timed_run "Release build" run_build

    # Delegate to install.sh
    local install_script="$PROJECT_ROOT/install.sh"
    if [ ! -f "$install_script" ]; then
        print_error "install.sh not found at $install_script"
        exit 1
    fi

    if [ ! -x "$install_script" ]; then
        chmod +x "$install_script"
    fi

    print_info "Invoking install.sh (requires root)..."
    sudo "$install_script"
}

show_status() {
    print_section "Repository Status"

    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        print_warning "Not in a git repository"
        return 0
    fi

    # Basic git status
    echo -e "${BLUE}Git Status:${NC}"
    local current_branch="detached"
    current_branch=$(git branch --show-current 2>/dev/null) || current_branch="detached"
    local uncommitted=0
    uncommitted=$(git status --porcelain 2>/dev/null | wc -l) || uncommitted=0
    local unpushed="unknown"
    unpushed=$(git rev-list --count '@{u}..HEAD' 2>/dev/null) || unpushed="unknown"

    echo -e "  Branch: ${CYAN}$current_branch${NC}"
    echo -e "  Uncommitted changes: ${CYAN}$uncommitted${NC}"
    echo -e "  Unpushed commits: ${CYAN}$unpushed${NC}"

    # GitHub status if available
    if command_exists gh; then
        local github_repo=""
        github_repo=$(gh repo view --json nameWithOwner --jq .nameWithOwner 2>/dev/null) || github_repo=""
        if [ -n "$github_repo" ]; then
            echo -e "\n${BLUE}GitHub Status (${CYAN}$github_repo${BLUE}):${NC}"

            # Pull requests
            local open_prs="[]"
            open_prs=$(gh pr list --state open --json number,title,author 2>/dev/null) || open_prs="[]"
            local pr_count=0
            pr_count=$(echo "$open_prs" | jq length 2>/dev/null) || pr_count=0
            echo -e "  Open pull requests: ${CYAN}$pr_count${NC}"

            if [ "$pr_count" -gt 0 ] && [ "$pr_count" -le 5 ]; then
                echo "$open_prs" | jq -r '.[] | "    • #\(.number): \(.title) (@\(.author.login))"' 2>/dev/null | head -5
            fi

            # Issues
            local open_issues=0
            open_issues=$(gh issue list --state open --json number 2>/dev/null | jq length 2>/dev/null) || open_issues=0
            echo -e "  Open issues: ${CYAN}$open_issues${NC}"

            # Dependabot alerts
            local vuln_count=0
            vuln_count=$(gh api repos/:owner/:repo/dependabot/alerts --jq '[.[] | select(.state == "open")] | length' 2>/dev/null) || vuln_count=0
            if [ "$vuln_count" -gt 0 ]; then
                echo -e "  ${YELLOW}Security vulnerabilities: $vuln_count${NC}"
            fi
        else
            echo -e "\n${YELLOW}  Not authenticated with GitHub CLI or not a GitHub repo${NC}"
        fi
    else
        echo -e "\n${YELLOW}  GitHub CLI (gh) not available for enhanced status${NC}"
    fi
}

generate_completions() {
    print_section "Generating Shell Completions"

    local completion_dir="$PROJECT_ROOT/.completions"
    mkdir -p "$completion_dir"

    # Bash completion
    cat > "$completion_dir/build.bash" << 'BASH_COMPLETION'
# Bash completion for gaud build.sh
_build_sh() {
    local cur prev commands options
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    commands="dev build test check clean setup lint format format-check audit doc coverage status install completions help"
    options="--release --verbose --debug --quick --parallel --features --all --force --version --help"

    case "$prev" in
        --features)
            return 0
            ;;
    esac

    if [[ "$cur" == -* ]]; then
        COMPREPLY=( $(compgen -W "$options" -- "$cur") )
    else
        COMPREPLY=( $(compgen -W "$commands" -- "$cur") )
    fi
    return 0
}
complete -F _build_sh build.sh
complete -F _build_sh ./build.sh
BASH_COMPLETION

    # Zsh completion
    cat > "$completion_dir/build.zsh" << 'ZSH_COMPLETION'

_build_sh() {
    local -a commands options

    commands=(
        'dev:Start development server with hot-reload'
        'build:Build the gaud binary'
        'test:Run all tests'
        'check:Run cargo check'
        'clean:Remove build artifacts'
        'setup:Install Rust toolchain and cargo tools'
        'lint:Run clippy lints'
        'format:Format all code'
        'format-check:Check formatting'
        'audit:Run security vulnerability scan'
        'doc:Generate and open API documentation'
        'coverage:Generate code coverage report'
        'status:Show git and GitHub repository status'
        'install:Build release and install system service'
        'completions:Generate shell completions'
        'help:Show help message'
    )

    options=(
        '--release[Build in release mode]'
        '--quick[Skip dependency checks]'
        '--verbose[Show detailed output]'
        '--debug[Show debug output]'
        '--parallel[Run operations in parallel]'
        '--features[Cargo features to enable]:features:'
        '--all[Force remove all artifacts]'
        '--force[Alias for --all]'
        '--version[Show version]'
        '--help[Show help]'
    )

    _arguments -s \
        '1:command:->commands' \
        '*:option:->options'

    case "$state" in
        commands)
            _describe -t commands 'build.sh commands' commands
            ;;
        options)
            _describe -t options 'options' options
            ;;
    esac
}

_build_sh "$@"
ZSH_COMPLETION

    # Fish completion
    cat > "$completion_dir/build.fish" << 'FISH_COMPLETION'
# Fish completion for gaud build.sh

set -l commands dev build test check clean setup lint format format-check audit doc coverage status install completions help

complete -c build.sh -f
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a dev -d "Start development server"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a build -d "Build the gaud binary"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a test -d "Run all tests"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a check -d "Run cargo check"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a clean -d "Clean build artifacts"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a setup -d "Install toolchain and tools"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a lint -d "Run clippy"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a format -d "Format code"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a format-check -d "Check formatting"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a audit -d "Security audit"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a doc -d "Generate docs"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a coverage -d "Code coverage"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a status -d "Show repo status"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a install -d "Build and install service"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a completions -d "Generate completions"
complete -c build.sh -n "not __fish_seen_subcommand_from $commands" -a help -d "Show help"

complete -c build.sh -l release -d "Build in release mode"
complete -c build.sh -l quick -d "Skip dependency checks"
complete -c build.sh -l verbose -d "Verbose output"
complete -c build.sh -l parallel -d "Parallel operations"
complete -c build.sh -l features -d "Cargo features" -r
complete -c build.sh -l version -d "Show version"
FISH_COMPLETION

    print_success "Shell completions generated in $completion_dir/"
    echo ""
    echo "To enable completions:"
    echo ""
    echo -e "  ${CYAN}Bash:${NC} echo 'source $completion_dir/build.bash' >> ~/.bashrc"
    echo -e "  ${CYAN}Zsh:${NC}  echo 'source $completion_dir/build.zsh' >> ~/.zshrc"
    echo -e "  ${CYAN}Fish:${NC} cp $completion_dir/build.fish ~/.config/fish/completions/"
}

show_version() {
    echo "Gaud Build Script v$SCRIPT_VERSION"
    echo "Gaud v$PROJECT_VERSION"
    echo ""
    echo "Components:"
    echo "  Rust:          $(rustc --version 2>/dev/null || echo 'not found')"
    echo "  Cargo:         $(cargo --version 2>/dev/null || echo 'not found')"
    echo "  Clippy:        $(cargo clippy --version 2>/dev/null || echo 'not found')"
    echo "  cargo-watch:   $(command_exists cargo-watch && echo 'available' || echo 'not found')"
    echo "  cargo-audit:   $(command_exists cargo-audit && echo 'available' || echo 'not found')"
    echo "  cargo-tarpaulin: $(command_exists cargo-tarpaulin && echo 'available' || echo 'not found')"
    echo ""
    echo "Environment:"
    echo "  CI Mode:   $CI_MODE"
    echo "  Platform:  $OSTYPE"
    echo "  Project:   $PROJECT_ROOT"
}

show_help() {
    echo -e "${CYAN}Usage:${NC} $0 [command] [options]"
    echo ""
    echo -e "${YELLOW}Build Commands:${NC}"
    echo "  dev           Start development server (cargo-watch hot-reload if available)"
    echo "  build         Build gaud binary (debug by default, --release for optimized)"
    echo "  install       Build release binary and install as system service"
    echo ""
    echo -e "${YELLOW}Quality Commands:${NC}"
    echo "  test          Run all tests (workspace-wide, including kiro-gateway-rs)"
    echo "  check         Run cargo check (fast type-checking)"
    echo "  lint          Run clippy lints on all code"
    echo "  format        Format all code with rustfmt"
    echo "  format-check  Check formatting without modifying"
    echo "  audit         Run security audit (cargo-audit)"
    echo "  coverage      Generate code coverage report (cargo-tarpaulin)"
    echo ""
    echo -e "${YELLOW}Documentation:${NC}"
    echo "  doc           Generate and open API documentation"
    echo ""
    echo -e "${YELLOW}Utility Commands:${NC}"
    echo "  status        Show git and GitHub repository status"
    echo "  clean         Remove build artifacts"
    echo "  setup         Check/install Rust toolchain and cargo tools"
    echo "  completions   Generate shell completions (bash/zsh/fish)"
    echo "  help          Show this help message"
    echo ""
    echo -e "${YELLOW}Options:${NC}"
    echo "  --release      Build in release mode (optimized, stripped, LTO)"
    echo "  --quick        Skip dependency checks for faster iteration"
    echo "  --verbose, -v  Show detailed output during operations"
    echo "  --debug        Show debug information (implies --verbose)"
    echo "  --parallel, -j Run operations in parallel where possible"
    echo "  --features X   Enable specific Cargo features"
    echo "  --all, --force Remove all artifacts without prompting (clean)"
    echo "  --version, -V  Show script version and tool info"
    echo "  --help, -h     Show this help message"
    echo ""
    echo -e "${YELLOW}Environment Variables:${NC}"
    echo "  CI             Auto-detected; enables non-interactive mode"
    echo "  FORCE_COLOR    Keep colors even in CI mode"
    echo ""
    echo -e "${YELLOW}Detected Tools:${NC}"
    echo -e "  Rust/Cargo:     ${CYAN}$(command_exists cargo && cargo --version 2>/dev/null || echo 'not found')${NC}"
    echo -e "  GitHub CLI:     ${CYAN}$(command_exists gh && echo 'available' || echo 'not found')${NC}"
    echo -e "  cargo-watch:    ${CYAN}$(command_exists cargo-watch && echo 'available' || echo 'not installed')${NC}"
    echo -e "  cargo-audit:    ${CYAN}$(command_exists cargo-audit && echo 'available' || echo 'not installed')${NC}"
    echo -e "  cargo-tarpaulin:${CYAN}$(command_exists cargo-tarpaulin && echo 'available' || echo 'not installed')${NC}"
    echo ""
    echo -e "${YELLOW}Examples:${NC}"
    echo -e "  ${CYAN}$0 dev${NC}                        # Start dev server with hot-reload"
    echo -e "  ${CYAN}$0 dev --quick${NC}                # Fast dev start (skip checks)"
    echo -e "  ${CYAN}$0 build --release${NC}            # Production build"
    echo -e "  ${CYAN}$0 test --verbose${NC}             # Run all tests with output"
    echo -e "  ${CYAN}$0 lint && $0 test${NC}            # Lint then test"
    echo -e "  ${CYAN}$0 audit${NC}                      # Security vulnerability check"
    echo -e "  ${CYAN}$0 clean --all${NC}                # Force clean all artifacts"
    echo -e "  ${CYAN}$0 install${NC}                    # Build + install systemd service"
    echo -e "  ${CYAN}$0 --version${NC}                  # Show version info"
}

# Parse arguments
RELEASE=false
FORCE_CLEAN=${FORCE_CLEAN:-false}
SKIP_DEPS_CHECK=false
VERBOSE=false
DEBUG_MODE=false
PARALLEL=false
FEATURES=""
COMMAND="help"

while [[ $# -gt 0 ]]; do
    case $1 in
        --release)
            RELEASE=true
            shift
            ;;
        --all|--force)
            FORCE_CLEAN=true
            shift
            ;;
        --quick)
            SKIP_DEPS_CHECK=true
            shift
            ;;
        --verbose|-v)
            VERBOSE=true
            shift
            ;;
        --debug)
            DEBUG_MODE=true
            VERBOSE=true
            shift
            ;;
        --parallel|-j)
            PARALLEL=true
            shift
            ;;
        --features)
            if [ -n "$2" ] && [ "${2:0:1}" != "-" ]; then
                FEATURES="$2"
                shift 2
            else
                print_error "--features requires a value"
                exit 1
            fi
            ;;
        --version|-V)
            show_version
            exit 0
            ;;
        --help|-h)
            show_help
            exit 0
            ;;
        dev|build|test|check|clean|setup|lint|format|format-check|audit|doc|coverage|status|install|completions|help)
            COMMAND=$1
            shift
            ;;
        *)
            print_warning "Unknown option: $1"
            show_help
            exit 1
            ;;
    esac
done

# Debug output
print_debug "Command: $COMMAND"
print_debug "Release: $RELEASE"
print_debug "Verbose: $VERBOSE"
print_debug "Parallel: $PARALLEL"
print_debug "Quick: $SKIP_DEPS_CHECK"
print_debug "Features: $FEATURES"
print_debug "CI Mode: $CI_MODE"

# Main execution
print_header

case $COMMAND in
    setup)
        timed_run "Rust environment" check_rust_env
        timed_run "Setup" run_setup
        print_timing_summary
        ;;
    dev)
        if [ "$SKIP_DEPS_CHECK" != true ]; then
            if ! command_exists cargo; then
                timed_run "Rust environment" check_rust_env
            fi
        else
            print_info "Skipping dependency checks (--quick)"
        fi
        run_dev
        ;;
    build)
        if [ "$SKIP_DEPS_CHECK" != true ]; then
            timed_run "Rust environment" check_rust_env
        else
            print_info "Skipping dependency checks (--quick)"
        fi
        timed_run "Build" run_build
        print_timing_summary
        ;;
    test)
        timed_run "Tests" run_tests
        print_timing_summary
        ;;
    check)
        timed_run "Check" run_check
        print_timing_summary
        ;;
    clean)
        clean_artifacts
        ;;
    lint)
        timed_run "Lint" run_lint
        print_timing_summary
        ;;
    format)
        run_format
        ;;
    format-check)
        run_format_check
        ;;
    status)
        show_status
        ;;
    audit)
        timed_run "Security audit" run_audit
        ;;
    doc)
        timed_run "Documentation" run_doc
        ;;
    coverage)
        timed_run "Coverage" run_coverage
        ;;
    install)
        run_install
        print_timing_summary
        ;;
    completions)
        generate_completions
        ;;
    help|*)
        show_help
        ;;
esac

echo -e "\n${GREEN}${ROCKET} Done!${NC}"
