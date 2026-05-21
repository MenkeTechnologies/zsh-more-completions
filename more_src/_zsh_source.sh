#compdef zsh_source.sh
# Documentation: none found
# Reference accessed: 2026-05-21
# Verified: file is a Click-style completion *template* (note the
# unsubstituted `{0}` / `{1}` / `{2}` / `{3}` placeholders) sourced
# from Garcia6l20/reflex (cli/src/_zsh_source.sh). It is not a real
# command's completion — it is meta-source for Click/Reflex apps to
# emit per-command completion scripts. Kept as a STUB; falls back to
# generic file completion if accidentally compdef'd.
# STUB: source file is an unfilled completion-emitter template, not a
# completion for a real command.

local curcontext="$curcontext" state line ret=1
_arguments -s -S '*:file:_files' && ret=0
return ret
