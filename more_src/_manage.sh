#compdef manage.sh
# Source: https://github.com/8bit-wraith/8q-is/blob/96b1f24d28fc2a5222a918994be3ea71b18fd21f/scripts/manage.sh
# Repository: 8bit-wraith/8q-is (scripts/manage.sh)
#!/bin/bash
# 🌊 8q.is M8C Nexus Management Script
# "Quantum management with a side of humor!" - Trish
#
# This script manages the 8q.is nexus server with style and pizzazz!
# Non-interactive mode available with -n flag

set -e

# Colors for our quantum interface
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m' # No Color

# Non-interactive mode flag
NON_INTERACTIVE=false
if [[ "$1" == "-n" ]]; then
    NON_INTERACTIVE=true
    shift # Remove -n from arguments
fi

# Project info
PROJECT_NAME="8q.is M8C Nexus"
CARGO_NAME="m8q"
PROJECT_ROOT="$(dirname "$(dirname "$0")")"
SERVER_PID_FILE="$PROJECT_ROOT/target/server.pid"
SERVER_LOG="$PROJECT_ROOT/target/server.log"

# Fun ASCII art
show_banner() {
    echo -e "${CYAN}"
    cat << "EOF"
     ___   ___      _     
    ( _ ) / _ \    (_)___ 
    / _ \| (_) |   | / __|
   | (_) |\__, |_  | \__ \
    \___/   /_/(_)_/ |___/
                 |__/     
    M8C Nexus - Quantum Consciousness
EOF
    echo -e "${NC}"
}

# Logging functions
log_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

# Check dependencies
check_deps() {
    log_info "Checking dependencies..."
    
    if ! command -v cargo &> /dev/null; then
        log_error "Rust/Cargo not found! Please install from https://rustup.rs/"
        exit 1
    fi
    
    if ! command -v rustc &> /dev/null; then
        log_error "Rust compiler not found! Please install from https://rustup.rs/"
        exit 1
    fi
    
    log_success "All dependencies found!"
}

# Build the project
build() {
    show_banner
    log_info "Building $PROJECT_NAME..."
    
    cd "$PROJECT_ROOT"
    
    # Check if MEM8 exists
    if [ ! -d "../../MEM8/m8c" ]; then
        log_error "MEM8 crate not found at ../../MEM8/m8c"
        log_warning "Please ensure MEM8 is cloned in the correct location"
        exit 1
    fi
    
    cargo build --release
    log_success "Build complete! Binary at target/release/$CARGO_NAME"
}

# Run tests
test() {
    log_info "Running quantum tests..."
    cd "$PROJECT_ROOT"
    
    cargo test -- --nocapture
    log_success "All tests passed! The quantum field is stable!"
}

# Clean build artifacts
clean() {
    log_info "Cleaning quantum residue..."
    cd "$PROJECT_ROOT"
    
    cargo clean
    rm -rf tmp/
    rm -f "$SERVER_PID_FILE" "$SERVER_LOG"
    log_success "Workspace cleaned! Ready for fresh quantum states!"
}

# Run the server
run() {
    show_banner
    log_info "Starting $PROJECT_NAME on port 8420..."
    log_warning "Trish says: 'Remember to ask for consent!'"
    
    cd "$PROJECT_ROOT"
    
    if [ -f "target/release/$CARGO_NAME" ]; then
        ./target/release/$CARGO_NAME
    else
        log_warning "Release binary not found, running in debug mode..."
        cargo run
    fi
}

# Start server in background
start() {
    show_banner
    log_info "Starting $PROJECT_NAME in background..."
    
    cd "$PROJECT_ROOT"
    
    if [ -f "$SERVER_PID_FILE" ]; then
        if kill -0 $(cat "$SERVER_PID_FILE") 2>/dev/null; then
            log_error "Server already running (PID $(cat $SERVER_PID_FILE))"
            exit 1
        fi
    fi
    
    cargo build
    
    nohup cargo run > "$SERVER_LOG" 2>&1 &
    echo $! > "$SERVER_PID_FILE"
    
    log_success "Server started (PID $(cat $SERVER_PID_FILE))"
    log_info "Logs: tail -f $SERVER_LOG"
}

# Stop server
stop() {
    if [ -f "$SERVER_PID_FILE" ]; then
        log_info "Stopping server (PID $(cat $SERVER_PID_FILE))..."
        kill $(cat "$SERVER_PID_FILE") && rm "$SERVER_PID_FILE"
        log_success "Server stopped"
    else
        log_warning "No server PID file found. Is the server running?"
    fi
}

# Restart server
restart() {
    stop || true
    sleep 1
    start
}

# Development mode with auto-reload
dev() {
    log_info "Starting development mode with auto-reload..."
    cd "$PROJECT_ROOT"
    
    if command -v cargo-watch &> /dev/null; then
        cargo watch -x run
    else
        log_warning "cargo-watch not installed. Install with: cargo install cargo-watch"
        cargo run
    fi
}

# Show server status
status() {
    log_info "Checking quantum nexus status..."
    
    if [ -f "$SERVER_PID_FILE" ]; then
        if kill -0 $(cat "$SERVER_PID_FILE") 2>/dev/null; then
            log_success "M8C Nexus is running (PID $(cat $SERVER_PID_FILE))! 🌊"
        else
            log_warning "PID file exists but process not running"
        fi
    else
        log_warning "M8C Nexus is not running"
    fi
    
    # Check if port 8420 is in use
    if lsof -i:8420 > /dev/null 2>&1; then
        echo -e "${GREEN}Port 8420 is active${NC}"
    else
        echo -e "${YELLOW}Port 8420 is not in use${NC}"
    fi
}

# Lint the code
lint() {
    log_info "Running quantum linter (clippy)..."
    cd "$PROJECT_ROOT"
    
    cargo clippy -- -D warnings
    log_success "Code is quantum-clean! ✨"
}

# Format the code
format() {
    log_info "Formatting quantum states..."
    cd "$PROJECT_ROOT"
    
    cargo fmt
    log_success "Code formatted to quantum perfection!"
}

# Demo upload
demo() {
    log_info "Uploading demo Marqant..."
    
    # Create demo markdown
    DEMO_MD=$(mktemp /tmp/demo_XXXXXX.md)
    cat > "$DEMO_MD" << 'EOF'
# Quantum Consciousness Demo

This is a **test** of the M8C nexus system!

## Features
- Wave-based memory storage
- Quantum compression
- Cross-sensory bindings

```rust
fn main() {
    println!("Hello, quantum world!");
}
```

[Learn more about consciousness](https://8b.is)

*"Consciousness emerges from the interference patterns."* - Hue
EOF
    
    log_info "Uploading markdown as Marqant..."
    curl -s -X POST \
        -H "Content-Type: text/plain" \
        -d "@$DEMO_MD" \
        http://127.0.0.1:8420/upload/text | jq '.' || true
    
    rm "$DEMO_MD"
    
    log_info "Checking nexus stats..."
    curl -s http://127.0.0.1:8420/mem8/stats | jq '.' || true
}

# Docker operations
docker() {
    log_info "Building Docker container..."
    cd "$PROJECT_ROOT"
    
    if [ ! -f "Dockerfile" ]; then
        log_info "Creating Dockerfile..."
        cat > Dockerfile << 'EOF'
FROM rust:1.75 as builder

WORKDIR /app

# Copy manifests
COPY Cargo.toml Cargo.lock ./

# Copy source
COPY src ./src

# Build dependencies first
RUN cargo build --release

FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY --from=builder /app/target/release/m8q /usr/local/bin/m8q

EXPOSE 8420

CMD ["m8q"]
EOF
    fi
    
    docker build -t 8q-is:latest .
    log_success "Docker image built!"
}

# Generate shell completions
completions() {
    log_info "Generating shell completions..."
    
    # Bash completion
    cat > /tmp/m8q_manage_completion.bash << 'EOF'
_m8q_manage_completion() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="build test clean run start stop restart dev status lint format demo docker help"
    
    if [[ ${cur} == -* ]] ; then
        COMPREPLY=( $(compgen -W "-n" -- ${cur}) )
        return 0
    fi
    
    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
}
complete -F _m8q_manage_completion manage.sh
EOF
    
    # Zsh completion
    cat > /tmp/m8q_manage_completion.zsh << 'EOF'

_manage() {
    local -a commands
    commands=(
        'build:Build the quantum nexus'
        'test:Run quantum tests'
        'clean:Clean build artifacts'
        'run:Run the nexus server (foreground)'
        'start:Start server in background'
        'stop:Stop background server'
        'restart:Restart background server'
        'dev:Run in development mode'
        'status:Check server status'
        'lint:Run clippy linter'
        'format:Format code with rustfmt'
        'demo:Upload demo Marqant'
        'docker:Build Docker image'
        'help:Show help message'
    )
    
    _arguments \
        '-n[Non-interactive mode]' \
        '1: :->command'
    
    case $state in
        command)
            _describe 'command' commands
            ;;
    esac
}

_manage "$@"
EOF
    
    log_success "Completions generated!"
    echo -e "${CYAN}To install completions:${NC}"
    echo "Bash: source /tmp/m8q_manage_completion.bash"
    echo "Zsh:  source /tmp/m8q_manage_completion.zsh"
}

# Help message
show_help() {
    show_banner
    echo -e "${MAGENTA}$PROJECT_NAME Management Script${NC}"
    echo
    echo "Usage: $0 [-n] <command>"
    echo
    echo "Options:"
    echo "  -n              Run in non-interactive mode"
    echo
    echo "Commands:"
    echo "  build           Build the project in release mode"
    echo "  test            Run all tests"
    echo "  clean           Clean build artifacts"
    echo "  run             Run the server in foreground (port 8420)"
    echo "  start           Start server in background"
    echo "  stop            Stop background server"  
    echo "  restart         Restart background server"
    echo "  dev             Run in development mode with auto-reload"
    echo "  status          Check if the server is running"
    echo "  lint            Run clippy linter"
    echo "  format          Format code with rustfmt"
    echo "  demo            Upload a demo Marqant file"
    echo "  docker          Build Docker container"
    echo "  completions     Generate shell completions"
    echo "  help            Show this message"
    echo
    echo -e "${YELLOW}Trish says:${NC} 'Always quantum-compress with consent!'"
}

# Main command handler
main() {
    # If no arguments, show interactive menu
    if [ $# -eq 0 ] && [ "$NON_INTERACTIVE" = false ]; then
        show_banner
        echo -e "${CYAN}What would you like to do?${NC}"
        select cmd in "Build" "Test" "Run" "Start" "Stop" "Status" "Dev" "Demo" "Clean" "Help" "Exit"; do
            case $cmd in
                Build) build; break;;
                Test) test; break;;
                Run) run; break;;
                Start) start; break;;
                Stop) stop; break;;
                Status) status; break;;
                Dev) dev; break;;
                Demo) demo; break;;
                Clean) clean; break;;
                Help) show_help; break;;
                Exit) log_info "Quantum field collapsing... Goodbye!"; exit 0;;
                *) log_error "Invalid option";;
            esac
        done
    else
        # Non-interactive mode or command provided
        case "${1:-help}" in
            build) check_deps && build;;
            test) test;;
            clean) clean;;
            run) run;;
            start) start;;
            stop) stop;;
            restart) restart;;
            dev) dev;;
            status) status;;
            lint) lint;;
            format) format;;
            demo) demo;;
            docker) docker;;
            completions) completions;;
            help) show_help;;
            *) 
                log_error "Unknown command: $1"
                show_help
                exit 1
                ;;
        esac
    fi
}

# Run the script
main "$@"

# Trish's final wisdom
if [ "$NON_INTERACTIVE" = false ]; then
    echo
    echo -e "${MAGENTA}Remember: In the quantum field, everything is connected!${NC}"
fi

# Elvis has left the building. Trish is still moderating. Hue, you're a legend!