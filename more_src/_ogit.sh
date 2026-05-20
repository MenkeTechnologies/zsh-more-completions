#compdef ogit
# Documentation: https://github.com/shakilsiraj/ogit
# Reference accessed: 2026-05-19
# Verified: upstream docs at the URL above.

local curcontext="$curcontext" state line ret=1
local -a commands

commands=(
  'create-branch:create a new branch'
  'delete-branch:delete a branch'
  'switch-branch:switch to another branch'
  'rename-branch:rename current branch'
  'display-branches:display branches'
  'commit-changes:commit changes'
  'amend-last-commit:amend the last commit'
  'delete-last-commit:delete the last commit'
  'revert-last-commit:revert the last commit'
  'push-commits:push commits to remote'
  'pull-remote-changes:pull remote changes'
  'merge-remote-branches:merge remote branches'
  'checkout-repo:checkout a repository'
  'clone-repo:clone a repository'
  'stash-changes:stash current changes'
  'unstash-changes:unstash changes'
  'delete-stash:delete a stash entry'
  'clear-stash:clear stash list'
  'create-tag:create a tag'
  'delete-tag:delete a tag'
  'push-tag:push tag to remote'
  'setup-git-flow:initialize git flow'
  'create-git-flow:create a git flow branch'
  'display-changes:display status'
  'status:alias of display-changes'
  'generate-ssh-keys:generate SSH keys'
  'reset-head:reset HEAD'
  'revert-changes:revert local changes'
  'help:show help'
)

_arguments -C \
  '(- *)'{-h,--help}'[show help]' \
  '(- *)'{-v,--version}'[show version]' \
  '(-s --search)'{-s,--search}'[search]:term:' \
  '(-l --list)'{-l,--list}'[list]' \
  '(-a --all)'{-a,--all}'[apply to all]' \
  '1: :->cmd' \
  '*::arg:->args' && ret=0

case $state in
  (cmd) _describe -t cmds 'ogit command' commands && ret=0 ;;
  (args)
    case $line[1] in
      (commit-changes)
        _arguments '--noSummary[suppress output summary]' && ret=0 ;;
      (*) _files && ret=0 ;;
    esac ;;
esac

return ret
