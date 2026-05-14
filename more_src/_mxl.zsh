# Source: https://github.com/tmpfs-archive/mxl/blob/5f1d82629f72d933c2ca227340a2140dab58d6da/completion/_mxl.zsh
# Repository: tmpfs-archive/mxl (completion/_mxl.zsh)
#compdef mxl
# vim: ft=zsh sw=2 ts=2 et
# ------------------------------------------------------------------------------
# Description
# -----------
#
#  Completion script for mxl(1).
#
#  Source: https://github.com/freeformsystems/mxl
#
# ------------------------------------------------------------------------------
# Authors
# -------
#
#  * muji (https://github.com/freeformsystems)
#
# ------------------------------------------------------------------------------

local -a commands
commands=(
  'attach:Attach to a session'
  'exec:Execute a command in a pane'
  'ls:List configuration files'
  'source:Source tmux configuration files'
  'alias:Manage file aliases'
  'remove:Remove aliases by pattern match'
  'prune:Remove stale aliases'
  'index:Generate alias index'
  'kill:Kill sessions, windows and panes'
  'install:Install alias files'
  'view:View and edit configuration files'
  'quit:Kill the tmux server'
  'help:Show man pages'
)

_arguments -C -- \
	'*:: :->args' \
  && return 0;

_describe -t commands "mxl commands" commands && return 0;
_files && return 0;
