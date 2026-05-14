# Source: https://github.com/samirahmed/ignore/blob/b44b147d2d5702ad1913872e090864b971109dd2/completion/_ignore.zsh
# Repository: samirahmed/ignore (completion/_ignore.zsh)
#compdef ignore

local state line lang

_arguments -C '1: :->lang'

case $state in 
	lang)
	local -a cmds
	cmds=(
	  'update: update your gitignores'
	  'clean: clear local cache'
	  'help: help text'
	  'list: list all the languages'
	)
	_describe -t commands 'boom command' cmds 
    _values 'lists' $(mkdir -p ~/.ignores;ls ~/.ignores | tr '[:upper:]' '[:lower:]' | grep '.gitignore' | sed 's/\.gitignore$//')
    ;;
esac
