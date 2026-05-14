# Source: https://github.com/yale-nova/weave/blob/7ac76a09da111177e300568ee0ff25c427989344/azure/common/install_fzf_autocomplete.sh
# Repository: yale-nova/weave (azure/common/install_fzf_autocomplete.sh)
#!/bin/bash
set -e

SCRIPT_PATTERN="*container*.sh"
ZSH_COMPLETION_DIR="$HOME/.zsh/completion"
ZSH_COMPLETION_FILE="$ZSH_COMPLETION_DIR/_container_autocomplete"

detect_shell() {
    local parent_shell
    parent_shell="$(ps -p $(ps -p $$ -o ppid=) -o comm=)"
    if [[ "$parent_shell" == *zsh* ]]; then
        echo "zsh"
    elif [[ "$parent_shell" == *bash* ]]; then
        echo "bash"
    else
        echo "$parent_shell"
    fi
}

install_fzf() {
    if ! command -v fzf >/dev/null 2>&1; then
        echo "🔍 Installing fzf..."
        if [[ "$OSTYPE" == "darwin"* ]]; then
            command -v brew >/dev/null || { echo "❌ Homebrew not found."; exit 1; }
            brew install fzf
            $(brew --prefix)/opt/fzf/install --all
        elif command -v apt >/dev/null; then
            sudo apt update && sudo apt install -y fzf
        else
            echo "❌ Unsupported OS for auto-install. Please install fzf manually."
            exit 1
        fi
    fi
}

write_zsh_completion() {
    mkdir -p "$ZSH_COMPLETION_DIR"

    # 🔥 Remove old version if it exists
    if [[ -f "$ZSH_COMPLETION_FILE" ]]; then
        echo "🧹 Removing old completion file: $ZSH_COMPLETION_FILE"
        rm -f "$ZSH_COMPLETION_FILE"
    fi

    cat > "$ZSH_COMPLETION_FILE" <<'EOF'
#compdef copy_from_container.sh

_container_autocomplete() {
  __get_arg_val_zsh() {
    local name="$1"
    for word in "${words[@]}"; do
      [[ "$word" == $name=* ]] && echo "${word#*=}" && return
    done
  }

  _arguments \
    '--container-path=[path inside container]: :->containerpath' \
    '--host-path=[path on host machine]: :->hostpath' \
    '--container-name=[container name]: :->containername' \
    '--resource-group=[resource group name]: :->resourcegroup'

  case $state in
    resourcegroup)
      local -a groups
      groups=("${(@f)$(az group list --query '[].name' -o tsv 2>/dev/null)}")
      compadd -a groups
      ;;
    containername)
      local rg="$(__get_arg_val_zsh --resource-group)"
      [[ -z "$rg" ]] && return 0
      local -a containers
      containers=("${(@f)$(az container list --resource-group "$rg" --query '[].name' -o tsv 2>/dev/null)}")
      compadd -a containers
      ;;
    containerpath)
      local container_name="$(__get_arg_val_zsh --container-name)"
      local resource_group="$(__get_arg_val_zsh --resource-group)"
      container_name="${container_name:-weavec1}"
      resource_group="${resource_group:-weave-ae}"

      if ! az container show --resource-group "$resource_group" --name "$container_name" >/dev/null 2>&1; then
        return 0
      fi

      local -a paths
      paths=("${(@f)$(az container exec \
        --resource-group "$resource_group" \
        --name "$container_name" \
        --exec-command "find /opt -type d -not -path '*/\.*'" \
        --query content -o tsv 2>/dev/null)}")
      compadd -a paths
      ;;
    hostpath)
      local -a paths
      paths=("${(@f)$(find . -type d -not -path '*/\.*' 2>/dev/null | head -n 100)}")
      compadd -a paths
      ;;
  esac
}
EOF

    grep -qxF "fpath+=('$ZSH_COMPLETION_DIR')" ~/.zshrc || echo "fpath+=('$ZSH_COMPLETION_DIR')" >> ~/.zshrc
    grep -qxF "autoload -Uz _container_autocomplete" ~/.zshrc || echo "autoload -Uz _container_autocomplete" >> ~/.zshrc
    grep -qxF "autoload -Uz compinit && compinit" ~/.zshrc || echo "autoload -Uz compinit && compinit" >> ~/.zshrc

    for f in ./$SCRIPT_PATTERN; do
        [[ -x "$f" ]] && grep -qxF "compdef _container_autocomplete ./${f##*/}" ~/.zshrc || echo "compdef _container_autocomplete ./${f##*/}" >> ~/.zshrc
    done

    echo "✅ Zsh autocompletion written to $ZSH_COMPLETION_FILE"
}

# 🚀 Run everything
install_fzf
shell=$(detect_shell)
echo "Detected shell: $shell"

if [[ "$shell" == "zsh" ]]; then
    write_zsh_completion
    echo "💡 Now run: source ~/.zshrc"
else
    echo "❌ This script currently supports Zsh only. Bash support not included in this version."
fi

echo "🎉 Autocompletion ready for your container scripts!"

