#compdef akv
# Documentation: https://github.com/abicky/akv
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/shelken/nix-config/blob/b9c2ce4c11775ac07c600396bfabed67f1b62c8f/home/base/core/zsh/functions/_akv.zsh
# Repository: shelken/nix-config (home/base/core/zsh/functions/_akv.zsh)

# _akv - akv 命令的 zsh 补全函数
# 按 Tab 时自动从 shelken-homelab vault 拉取 secret 名称列表

local vault_name="shelken-homelab"
local -a secrets
local state

_arguments \
  '(-l --list)'{-l,--list}'[列出所有 secret 名称]' \
  '(-h --help)'{-h,--help}'[显示帮助信息]' \
  '1:secret 名称:->secret'

case $state in
  secret)
    secrets=(${(f)"$(az keyvault secret list \
      --vault-name "$vault_name" \
      --query "[].name" \
      -o tsv 2>/dev/null)"})
    _describe 'secret 名称' secrets
    ;;
esac
