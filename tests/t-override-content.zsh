#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Deep content tests for override_src/ completion files
#}}}***********************************************************

@setup {
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    osrc="$pluginDir/override_src"
}

# ─── _git compdef and basics ────────────────────────────────────────────────

@test '_git has compdef header naming git' {
    run grep -c '#compdef git' "$osrc/_git"
    assert $state equals 0
}

@test '_git passes zsh syntax check' {
    run zsh -n "$osrc/_git"
    assert $state equals 0
}

@test '_git is substantial - over 7000 lines' {
    local lc=$(wc -l < "$osrc/_git")
    assert "$lc" is_greater_than 7000
}

@test '_git uses _arguments' {
    run grep -c '_arguments' "$osrc/_git"
    assert $state equals 0
}

@test '_git uses local keyword' {
    run grep -c 'local ' "$osrc/_git"
    assert $state equals 0
}

@test '_git uses case statement for dispatch' {
    run grep -c 'case ' "$osrc/_git"
    assert $state equals 0
}

# ─── _git subcommand functions ──────────────────────────────────────────────

@test '_git has _git-add function' {
    run grep -c '_git-add' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-am function' {
    run grep -c '_git-am' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-apply function' {
    run grep -c '_git-apply' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-archive function' {
    run grep -c '_git-archive' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-bisect function' {
    run grep -c '_git-bisect' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-blame function' {
    run grep -c '_git-blame' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-branch function' {
    run grep -c '_git-branch' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-bundle function' {
    run grep -c '_git-bundle' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-checkout function' {
    run grep -c '_git-checkout' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-cherry function' {
    run grep -c '_git-cherry' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-cherry-pick function' {
    run grep -c '_git-cherry-pick' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-clean function' {
    run grep -c '_git-clean' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-clone function' {
    run grep -c '_git-clone' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-commit function' {
    run grep -c '_git-commit' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-config function' {
    run grep -c '_git-config' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-describe function' {
    run grep -c '_git-describe' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-diff function' {
    run grep -c '_git-diff' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-difftool function' {
    run grep -c '_git-difftool' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-fetch function' {
    run grep -c '_git-fetch' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-format-patch function' {
    run grep -c '_git-format-patch' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-fsck function' {
    run grep -c '_git-fsck' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-gc function' {
    run grep -c '_git-gc' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-grep function' {
    run grep -c '_git-grep' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-init function' {
    run grep -c '_git-init' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-log function' {
    run grep -c '_git-log' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-merge function' {
    run grep -c '_git-merge' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-mergetool function' {
    run grep -c '_git-mergetool' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-mv function' {
    run grep -c '_git-mv' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-notes function' {
    run grep -c '_git-notes' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-pull function' {
    run grep -c '_git-pull' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-push function' {
    run grep -c '_git-push' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-rebase function' {
    run grep -c '_git-rebase' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-reflog function' {
    run grep -c '_git-reflog' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-remote function' {
    run grep -c '_git-remote' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-repack function' {
    run grep -c '_git-repack' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-replace function' {
    run grep -c '_git-replace' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-request-pull function' {
    run grep -c '_git-request-pull' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-reset function' {
    run grep -c '_git-reset' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-revert function' {
    run grep -c '_git-revert' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-rm function' {
    run grep -c '_git-rm' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-send-email function' {
    run grep -c '_git-send-email' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-shortlog function' {
    run grep -c '_git-shortlog' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-show function' {
    run grep -c '_git-show' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-show-branch function' {
    run grep -c '_git-show-branch' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-stash function' {
    run grep -c '_git-stash' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-status function' {
    run grep -c '_git-status' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-submodule function' {
    run grep -c '_git-submodule' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-svn function' {
    run grep -c '_git-svn' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-tag function' {
    run grep -c '_git-tag' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-whatchanged function' {
    run grep -c '_git-whatchanged' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-worktree function' {
    run grep -c '_git-worktree' "$osrc/_git"
    assert $state equals 0
}

# ─── _git additional subcommand functions ───────────────────────────────────

@test '_git has _git-annotate function' {
    run grep -c '_git-annotate' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-archimport function' {
    run grep -c '_git-archimport' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-cat-file function' {
    run grep -c '_git-cat-file' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-check-attr function' {
    run grep -c '_git-check-attr' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-check-ignore function' {
    run grep -c '_git-check-ignore' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-check-mailmap function' {
    run grep -c '_git-check-mailmap' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-check-ref-format function' {
    run grep -c '_git-check-ref-format' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-checkout-index function' {
    run grep -c '_git-checkout-index' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-citool function' {
    run grep -c '_git-citool' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-column function' {
    run grep -c '_git-column' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-commit-tree function' {
    run grep -c '_git-commit-tree' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-count-objects function' {
    run grep -c '_git-count-objects' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-cvsexportcommit function' {
    run grep -c '_git-cvsexportcommit' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-cvsimport function' {
    run grep -c '_git-cvsimport' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-cvsserver function' {
    run grep -c '_git-cvsserver' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-daemon function' {
    run grep -c '_git-daemon' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-diff-files function' {
    run grep -c '_git-diff-files' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-diff-index function' {
    run grep -c '_git-diff-index' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-diff-tree function' {
    run grep -c '_git-diff-tree' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-fast-export function' {
    run grep -c '_git-fast-export' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-fast-import function' {
    run grep -c '_git-fast-import' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-fetch-pack function' {
    run grep -c '_git-fetch-pack' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-filter-branch function' {
    run grep -c '_git-filter-branch' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-fmt-merge-msg function' {
    run grep -c '_git-fmt-merge-msg' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-for-each-ref function' {
    run grep -c '_git-for-each-ref' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-gui function' {
    run grep -c '_git-gui' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-hash-object function' {
    run grep -c '_git-hash-object' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-help function' {
    run grep -c '_git-help' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-imap-send function' {
    run grep -c '_git-imap-send' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-index-pack function' {
    run grep -c '_git-index-pack' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-instaweb function' {
    run grep -c '_git-instaweb' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-interpret-trailers function' {
    run grep -c '_git-interpret-trailers' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-ls-files function' {
    run grep -c '_git-ls-files' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-ls-remote function' {
    run grep -c '_git-ls-remote' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-ls-tree function' {
    run grep -c '_git-ls-tree' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-mailinfo function' {
    run grep -c '_git-mailinfo' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-mailsplit function' {
    run grep -c '_git-mailsplit' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-merge-base function' {
    run grep -c '_git-merge-base' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-merge-file function' {
    run grep -c '_git-merge-file' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-merge-index function' {
    run grep -c '_git-merge-index' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-merge-tree function' {
    run grep -c '_git-merge-tree' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-mktag function' {
    run grep -c '_git-mktag' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-mktree function' {
    run grep -c '_git-mktree' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-name-rev function' {
    run grep -c '_git-name-rev' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-pack-objects function' {
    run grep -c '_git-pack-objects' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-pack-refs function' {
    run grep -c '_git-pack-refs' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-prune function' {
    run grep -c '_git-prune' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-pull function reference' {
    run grep -c '_git-pull' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-quiltimport function' {
    run grep -c '_git-quiltimport' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-range-diff function' {
    run grep -c '_git-range-diff' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-read-tree function' {
    run grep -c '_git-read-tree' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-receive-pack function' {
    run grep -c '_git-receive-pack' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-rerere function' {
    run grep -c '_git-rerere' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-rev-list function' {
    run grep -c '_git-rev-list' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-rev-parse function' {
    run grep -c '_git-rev-parse' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-send-pack function' {
    run grep -c '_git-send-pack' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-shell function' {
    run grep -c '_git-shell' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-show-ref function' {
    run grep -c '_git-show-ref' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-stripspace function' {
    run grep -c '_git-stripspace' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-subtree function' {
    run grep -c '_git-subtree' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-symbolic-ref function' {
    run grep -c '_git-symbolic-ref' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-unpack-file function' {
    run grep -c '_git-unpack-file' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-unpack-objects function' {
    run grep -c '_git-unpack-objects' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-update-index function' {
    run grep -c '_git-update-index' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-update-ref function' {
    run grep -c '_git-update-ref' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-upload-archive function' {
    run grep -c '_git-upload-archive' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-upload-pack function' {
    run grep -c '_git-upload-pack' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-var function' {
    run grep -c '_git-var' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-verify-commit function' {
    run grep -c '_git-verify-commit' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-verify-pack function' {
    run grep -c '_git-verify-pack' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-verify-tag function' {
    run grep -c '_git-verify-tag' "$osrc/_git"
    assert $state equals 0
}

@test '_git has _git-write-tree function' {
    run grep -c '_git-write-tree' "$osrc/_git"
    assert $state equals 0
}

# ─── _git common options ────────────────────────────────────────────────────

@test '_git has --git-dir option' {
    run grep -c '\-\-git-dir' "$osrc/_git"
    assert $state equals 0
}

@test '_git has --work-tree option' {
    run grep -c '\-\-work-tree' "$osrc/_git"
    assert $state equals 0
}

@test '_git has --namespace option' {
    run grep -c '\-\-namespace' "$osrc/_git"
    assert $state equals 0
}

@test '_git has --bare option' {
    run grep -c '\-\-bare' "$osrc/_git"
    assert $state equals 0
}

@test '_git has --no-pager option' {
    run grep -c '\-\-no-pager' "$osrc/_git"
    assert $state equals 0
}

@test '_git has --paginate option' {
    run grep -c '\-\-paginate' "$osrc/_git"
    assert $state equals 0
}

@test '_git has --no-replace-objects option' {
    run grep -c '\-\-no-replace-objects' "$osrc/_git"
    assert $state equals 0
}

@test '_git has --literal-pathspecs option' {
    run grep -c '\-\-literal-pathspecs' "$osrc/_git"
    assert $state equals 0
}

@test '_git has --exec-path option' {
    run grep -c '\-\-exec-path' "$osrc/_git"
    assert $state equals 0
}

@test '_git has --html-path option' {
    run grep -c '\-\-html-path' "$osrc/_git"
    assert $state equals 0
}

@test '_git has --man-path option' {
    run grep -c '\-\-man-path' "$osrc/_git"
    assert $state equals 0
}

@test '_git has --info-path option' {
    run grep -c '\-\-info-path' "$osrc/_git"
    assert $state equals 0
}

# ─── _git helper functions ──────────────────────────────────────────────────

@test '_git defines __git_command_successful' {
    run grep -c '__git_command_successful' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_files' {
    run grep -c '__git_files' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_commits' {
    run grep -c '__git_commits' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_heads' {
    run grep -c '__git_heads' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_tags' {
    run grep -c '__git_tags' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_branch_names' {
    run grep -c '__git_branch_names' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_remote_names helper' {
    run grep -c '__git_remotes' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_stashes' {
    run grep -c '__git_stashes' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_tree_files' {
    run grep -c '__git_tree_files' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_modified_files' {
    run grep -c '__git_modified_files' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_config_values' {
    run grep -c '__git_config_values' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_aliases' {
    run grep -c '__git_aliases' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_branches' {
    run grep -c '__git_branches' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_references' {
    run grep -c '__git_references' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_revisions' {
    run grep -c '__git_revisions' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_merge_strategies' {
    run grep -c '__git_merge_strategies' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_guard' {
    run grep -c '__git_guard' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_heads_local' {
    run grep -c '__git_heads_local' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_heads_remote' {
    run grep -c '__git_heads_remote' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_objects' {
    run grep -c '__git_objects' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_trees' {
    run grep -c '__git_trees' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_blob_objects' {
    run grep -c '__git_blob_objects' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_commit_objects' {
    run grep -c '__git_commit_objects' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_cached_files' {
    run grep -c '__git_cached_files' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_deleted_files' {
    run grep -c '__git_deleted_files' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_other_files' {
    run grep -c '__git_other_files' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_unmerged_files' {
    run grep -c '__git_unmerged_files' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_killed_files' {
    run grep -c '__git_killed_files' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_changed_files' {
    run grep -c '__git_changed_files' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_difftools' {
    run grep -c '__git_difftools' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_mergetools' {
    run grep -c '__git_mergetools' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_date_formats' {
    run grep -c '__git_date_formats' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_encodings' {
    run grep -c '__git_encodings' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_browsers' {
    run grep -c '__git_browsers' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_colors' {
    run grep -c '__git_colors' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_color_attributes' {
    run grep -c '__git_color_attributes' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_color_whens' {
    run grep -c '__git_color_whens' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_archive_formats' {
    run grep -c '__git_archive_formats' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_compression_levels' {
    run grep -c '__git_compression_levels' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_apply_whitespace_strategies' {
    run grep -c '__git_apply_whitespace_strategies' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_submodules' {
    run grep -c '__git_submodules' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_remote_branch_names' {
    run grep -c '__git_remote_branch_names' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_config_sections' {
    run grep -c '__git_config_sections' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_ignore_line' {
    run grep -c '__git_ignore_line' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_ignore_line_inside_arguments' {
    run grep -c '__git_ignore_line_inside_arguments' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_setup_apply_options' {
    run grep -c '__git_setup_apply_options' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_setup_diff_options' {
    run grep -c '__git_setup_diff_options' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_setup_log_options' {
    run grep -c '__git_setup_log_options' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_setup_merge_options' {
    run grep -c '__git_setup_merge_options' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_setup_revision_options' {
    run grep -c '__git_setup_revision_options' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_setup_fetch_options' {
    run grep -c '__git_setup_fetch_options' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_ref_specs' {
    run grep -c '__git_ref_specs' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_reflog_entries' {
    run grep -c '__git_reflog_entries' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_local_repositories' {
    run grep -c '__git_local_repositories' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_remote_repositories' {
    run grep -c '__git_remote_repositories' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_any_repositories' {
    run grep -c '__git_any_repositories' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_repositories' {
    run grep -c '__git_repositories' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_repositories_or_urls' {
    run grep -c '__git_repositories_or_urls' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_gpg_secret_keys' {
    run grep -c '__git_gpg_secret_keys' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_notes_refs' {
    run grep -c '__git_notes_refs' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_committishs' {
    run grep -c '__git_committishs' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_commit_ranges' {
    run grep -c '__git_commit_ranges' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_recent_commits' {
    run grep -c '__git_recent_commits' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_recent_branches' {
    run grep -c '__git_recent_branches' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_worktrees' {
    run grep -c '__git_worktrees' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_svn helper' {
    run grep -c '__git_svn' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_format_placeholders' {
    run grep -c '__git_format_placeholders' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_signoff_file' {
    run grep -c '__git_signoff_file' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_daemon_service' {
    run grep -c '__git_daemon_service' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_attributes' {
    run grep -c '__git_attributes' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_sendemail_confirm_values' {
    run grep -c '__git_sendemail_confirm_values' "$osrc/_git"
    assert $state equals 0
}

@test '_git defines __git_sendemail_identities' {
    run grep -c '__git_sendemail_identities' "$osrc/_git"
    assert $state equals 0
}

# ─── _git concept references ───────────────────────────────────────────────

@test '_git references commit concept' {
    run grep -c 'commit' "$osrc/_git"
    assert $state equals 0
}

@test '_git references branch concept' {
    run grep -c 'branch' "$osrc/_git"
    assert $state equals 0
}

@test '_git references tag concept' {
    run grep -c 'tag' "$osrc/_git"
    assert $state equals 0
}

@test '_git references remote concept' {
    run grep -c 'remote' "$osrc/_git"
    assert $state equals 0
}

@test '_git references stash concept' {
    run grep -c 'stash' "$osrc/_git"
    assert $state equals 0
}

@test '_git references HEAD concept' {
    run grep -c 'HEAD' "$osrc/_git"
    assert $state equals 0
}

@test '_git references index concept' {
    run grep -c 'index' "$osrc/_git"
    assert $state equals 0
}

@test '_git references worktree concept' {
    run grep -c 'worktree' "$osrc/_git"
    assert $state equals 0
}

@test '_git references reflog concept' {
    run grep -c 'reflog' "$osrc/_git"
    assert $state equals 0
}

@test '_git references merge concept' {
    run grep -c 'merge' "$osrc/_git"
    assert $state equals 0
}

@test '_git references rebase concept' {
    run grep -c 'rebase' "$osrc/_git"
    assert $state equals 0
}

@test '_git references staging area with cached' {
    run grep -c 'cached' "$osrc/_git"
    assert $state equals 0
}

@test '_git references pathspec concept' {
    run grep -c 'pathspec' "$osrc/_git"
    assert $state equals 0
}

@test '_git references upstream concept' {
    run grep -c 'upstream' "$osrc/_git"
    assert $state equals 0
}

@test '_git references origin concept' {
    run grep -c 'origin' "$osrc/_git"
    assert $state equals 0
}

# ─── _git file characteristics ──────────────────────────────────────────────

@test '_git file is not empty' {
    run test -s "$osrc/_git"
    assert $state equals 0
}

@test '_git file is readable' {
    run test -r "$osrc/_git"
    assert $state equals 0
}

@test '_git starts with #compdef' {
    local first_line=$(head -1 "$osrc/_git")
    assert "$first_line" contains '#compdef'
}

@test '_git contains zstyle references' {
    run grep -c 'zstyle' "$osrc/_git"
    assert $state equals 0
}

@test '_git contains compadd calls' {
    run grep -c 'compadd' "$osrc/_git"
    assert $state equals 0
}

@test '_git contains _describe calls' {
    run grep -c '_describe' "$osrc/_git"
    assert $state equals 0
}

@test '_git contains _alternative calls' {
    run grep -c '_alternative' "$osrc/_git"
    assert $state equals 0
}

@test '_git contains _message calls' {
    run grep -c '_message' "$osrc/_git"
    assert $state equals 0
}

@test '_git contains _values calls' {
    run grep -c '_values' "$osrc/_git"
    assert $state equals 0
}

@test '_git contains _files calls' {
    run grep -c '_files' "$osrc/_git"
    assert $state equals 0
}

@test '_git contains curcontext variable' {
    run grep -c 'curcontext' "$osrc/_git"
    assert $state equals 0
}

@test '_git contains opt_args variable' {
    run grep -c 'opt_args' "$osrc/_git"
    assert $state equals 0
}

@test '_git contains declare -A usage' {
    run grep -c 'declare -A' "$osrc/_git"
    assert $state equals 0
}

@test '_git contains return ret pattern' {
    run grep -c 'return ret' "$osrc/_git"
    assert $state equals 0
}

@test '_git contains $+functions guard' {
    run grep -c 'functions\[' "$osrc/_git"
    assert $state equals 0
}

# ─── _git-clone compdef and basics ──────────────────────────────────────────

@test '_git-clone has compdef header' {
    run grep -c '#compdef git-clone' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone passes zsh syntax check' {
    run zsh -n "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone is substantial - over 7000 lines' {
    local lc=$(wc -l < "$osrc/_git-clone")
    assert "$lc" is_greater_than 7000
}

@test '_git-clone uses _arguments' {
    run grep -c '_arguments' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone uses local keyword' {
    run grep -c 'local ' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone uses case statement' {
    run grep -c 'case ' "$osrc/_git-clone"
    assert $state equals 0
}

# ─── _git-clone subcommand functions ────────────────────────────────────────

@test '_git-clone has _git-add function' {
    run grep -c '_git-add' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-am function' {
    run grep -c '_git-am' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-apply function' {
    run grep -c '_git-apply' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-archive function' {
    run grep -c '_git-archive' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-bisect function' {
    run grep -c '_git-bisect' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-blame function' {
    run grep -c '_git-blame' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-branch function' {
    run grep -c '_git-branch' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-bundle function' {
    run grep -c '_git-bundle' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-checkout function' {
    run grep -c '_git-checkout' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-cherry function' {
    run grep -c '_git-cherry' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-cherry-pick function' {
    run grep -c '_git-cherry-pick' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-clean function' {
    run grep -c '_git-clean' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-clone function' {
    run grep -c '_git-clone' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-commit function' {
    run grep -c '_git-commit' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-config function' {
    run grep -c '_git-config' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-describe function' {
    run grep -c '_git-describe' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-diff function' {
    run grep -c '_git-diff' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-difftool function' {
    run grep -c '_git-difftool' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-fetch function' {
    run grep -c '_git-fetch' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-format-patch function' {
    run grep -c '_git-format-patch' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-fsck function' {
    run grep -c '_git-fsck' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-gc function' {
    run grep -c '_git-gc' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-grep function' {
    run grep -c '_git-grep' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-init function' {
    run grep -c '_git-init' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-log function' {
    run grep -c '_git-log' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-merge function' {
    run grep -c '_git-merge' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-mergetool function' {
    run grep -c '_git-mergetool' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-mv function' {
    run grep -c '_git-mv' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-notes function' {
    run grep -c '_git-notes' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-pull function' {
    run grep -c '_git-pull' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-push function' {
    run grep -c '_git-push' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-rebase function' {
    run grep -c '_git-rebase' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-reflog function' {
    run grep -c '_git-reflog' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-remote function' {
    run grep -c '_git-remote' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-repack function' {
    run grep -c '_git-repack' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-replace function' {
    run grep -c '_git-replace' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-request-pull function' {
    run grep -c '_git-request-pull' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-reset function' {
    run grep -c '_git-reset' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-revert function' {
    run grep -c '_git-revert' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-rm function' {
    run grep -c '_git-rm' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-send-email function' {
    run grep -c '_git-send-email' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-shortlog function' {
    run grep -c '_git-shortlog' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-show function' {
    run grep -c '_git-show' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-show-branch function' {
    run grep -c '_git-show-branch' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-stash function' {
    run grep -c '_git-stash' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-status function' {
    run grep -c '_git-status' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-submodule function' {
    run grep -c '_git-submodule' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-svn function' {
    run grep -c '_git-svn' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-tag function' {
    run grep -c '_git-tag' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-whatchanged function' {
    run grep -c '_git-whatchanged' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-worktree function' {
    run grep -c '_git-worktree' "$osrc/_git-clone"
    assert $state equals 0
}

# ─── _git-clone additional subcommand functions ────────────────────────────

@test '_git-clone has _git-annotate function' {
    run grep -c '_git-annotate' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-cat-file function' {
    run grep -c '_git-cat-file' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-check-attr function' {
    run grep -c '_git-check-attr' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-check-ignore function' {
    run grep -c '_git-check-ignore' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-check-mailmap function' {
    run grep -c '_git-check-mailmap' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-check-ref-format function' {
    run grep -c '_git-check-ref-format' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-checkout-index function' {
    run grep -c '_git-checkout-index' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-citool function' {
    run grep -c '_git-citool' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-column function' {
    run grep -c '_git-column' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-commit-tree function' {
    run grep -c '_git-commit-tree' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-count-objects function' {
    run grep -c '_git-count-objects' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-cvsexportcommit function' {
    run grep -c '_git-cvsexportcommit' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-cvsimport function' {
    run grep -c '_git-cvsimport' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-cvsserver function' {
    run grep -c '_git-cvsserver' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-daemon function' {
    run grep -c '_git-daemon' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-diff-files function' {
    run grep -c '_git-diff-files' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-diff-index function' {
    run grep -c '_git-diff-index' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-diff-tree function' {
    run grep -c '_git-diff-tree' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-fast-export function' {
    run grep -c '_git-fast-export' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-fast-import function' {
    run grep -c '_git-fast-import' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-fetch-pack function' {
    run grep -c '_git-fetch-pack' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-filter-branch function' {
    run grep -c '_git-filter-branch' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-fmt-merge-msg function' {
    run grep -c '_git-fmt-merge-msg' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-for-each-ref function' {
    run grep -c '_git-for-each-ref' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-gui function' {
    run grep -c '_git-gui' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-hash-object function' {
    run grep -c '_git-hash-object' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-help function' {
    run grep -c '_git-help' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-imap-send function' {
    run grep -c '_git-imap-send' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-index-pack function' {
    run grep -c '_git-index-pack' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-instaweb function' {
    run grep -c '_git-instaweb' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-interpret-trailers function' {
    run grep -c '_git-interpret-trailers' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-ls-files function' {
    run grep -c '_git-ls-files' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-ls-remote function' {
    run grep -c '_git-ls-remote' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-ls-tree function' {
    run grep -c '_git-ls-tree' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-mailinfo function' {
    run grep -c '_git-mailinfo' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-mailsplit function' {
    run grep -c '_git-mailsplit' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-merge-base function' {
    run grep -c '_git-merge-base' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-merge-file function' {
    run grep -c '_git-merge-file' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-merge-index function' {
    run grep -c '_git-merge-index' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-merge-tree function' {
    run grep -c '_git-merge-tree' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-mktag function' {
    run grep -c '_git-mktag' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-mktree function' {
    run grep -c '_git-mktree' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-name-rev function' {
    run grep -c '_git-name-rev' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-pack-objects function' {
    run grep -c '_git-pack-objects' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-pack-refs function' {
    run grep -c '_git-pack-refs' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-prune function' {
    run grep -c '_git-prune' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-quiltimport function' {
    run grep -c '_git-quiltimport' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-range-diff function' {
    run grep -c '_git-range-diff' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-read-tree function' {
    run grep -c '_git-read-tree' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-receive-pack function' {
    run grep -c '_git-receive-pack' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-rerere function' {
    run grep -c '_git-rerere' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-rev-list function' {
    run grep -c '_git-rev-list' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-rev-parse function' {
    run grep -c '_git-rev-parse' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-send-pack function' {
    run grep -c '_git-send-pack' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-shell function' {
    run grep -c '_git-shell' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-show-ref function' {
    run grep -c '_git-show-ref' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-stripspace function' {
    run grep -c '_git-stripspace' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-subtree function' {
    run grep -c '_git-subtree' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-symbolic-ref function' {
    run grep -c '_git-symbolic-ref' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-unpack-file function' {
    run grep -c '_git-unpack-file' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-unpack-objects function' {
    run grep -c '_git-unpack-objects' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-update-index function' {
    run grep -c '_git-update-index' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-update-ref function' {
    run grep -c '_git-update-ref' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-upload-archive function' {
    run grep -c '_git-upload-archive' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-upload-pack function' {
    run grep -c '_git-upload-pack' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-var function' {
    run grep -c '_git-var' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-verify-commit function' {
    run grep -c '_git-verify-commit' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-verify-pack function' {
    run grep -c '_git-verify-pack' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-verify-tag function' {
    run grep -c '_git-verify-tag' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-write-tree function' {
    run grep -c '_git-write-tree' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has _git-archimport function' {
    run grep -c '_git-archimport' "$osrc/_git-clone"
    assert $state equals 0
}

# ─── _git-clone helper functions ───────────────────────────────────────────

@test '_git-clone defines __git_command_successful' {
    run grep -c '__git_command_successful' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_files' {
    run grep -c '__git_files' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_commits' {
    run grep -c '__git_commits' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_heads' {
    run grep -c '__git_heads' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_tags' {
    run grep -c '__git_tags' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_branch_names' {
    run grep -c '__git_branch_names' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_remotes' {
    run grep -c '__git_remotes' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_stashes' {
    run grep -c '__git_stashes' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_tree_files' {
    run grep -c '__git_tree_files' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_modified_files' {
    run grep -c '__git_modified_files' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_config_values' {
    run grep -c '__git_config_values' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_aliases' {
    run grep -c '__git_aliases' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_branches' {
    run grep -c '__git_branches' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_references' {
    run grep -c '__git_references' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_revisions' {
    run grep -c '__git_revisions' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_merge_strategies' {
    run grep -c '__git_merge_strategies' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_guard' {
    run grep -c '__git_guard' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_heads_local' {
    run grep -c '__git_heads_local' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_heads_remote' {
    run grep -c '__git_heads_remote' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_objects' {
    run grep -c '__git_objects' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_trees' {
    run grep -c '__git_trees' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_blob_objects' {
    run grep -c '__git_blob_objects' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_commit_objects' {
    run grep -c '__git_commit_objects' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_cached_files' {
    run grep -c '__git_cached_files' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_deleted_files' {
    run grep -c '__git_deleted_files' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_other_files' {
    run grep -c '__git_other_files' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_unmerged_files' {
    run grep -c '__git_unmerged_files' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_killed_files' {
    run grep -c '__git_killed_files' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_changed_files' {
    run grep -c '__git_changed_files' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_difftools' {
    run grep -c '__git_difftools' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_mergetools' {
    run grep -c '__git_mergetools' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_date_formats' {
    run grep -c '__git_date_formats' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_encodings' {
    run grep -c '__git_encodings' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_browsers' {
    run grep -c '__git_browsers' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_colors' {
    run grep -c '__git_colors' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_color_attributes' {
    run grep -c '__git_color_attributes' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_color_whens' {
    run grep -c '__git_color_whens' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_archive_formats' {
    run grep -c '__git_archive_formats' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_compression_levels' {
    run grep -c '__git_compression_levels' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_apply_whitespace_strategies' {
    run grep -c '__git_apply_whitespace_strategies' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_submodules' {
    run grep -c '__git_submodules' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_remote_branch_names' {
    run grep -c '__git_remote_branch_names' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_config_sections' {
    run grep -c '__git_config_sections' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_ignore_line' {
    run grep -c '__git_ignore_line' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_setup_apply_options' {
    run grep -c '__git_setup_apply_options' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_setup_diff_options' {
    run grep -c '__git_setup_diff_options' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_setup_log_options' {
    run grep -c '__git_setup_log_options' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_setup_merge_options' {
    run grep -c '__git_setup_merge_options' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_setup_revision_options' {
    run grep -c '__git_setup_revision_options' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_setup_fetch_options' {
    run grep -c '__git_setup_fetch_options' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_ref_specs' {
    run grep -c '__git_ref_specs' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_reflog_entries' {
    run grep -c '__git_reflog_entries' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_local_repositories' {
    run grep -c '__git_local_repositories' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_remote_repositories' {
    run grep -c '__git_remote_repositories' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_any_repositories' {
    run grep -c '__git_any_repositories' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_repositories' {
    run grep -c '__git_repositories' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_repositories_or_urls' {
    run grep -c '__git_repositories_or_urls' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_gpg_secret_keys' {
    run grep -c '__git_gpg_secret_keys' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_notes_refs' {
    run grep -c '__git_notes_refs' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_committishs' {
    run grep -c '__git_committishs' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_commit_ranges' {
    run grep -c '__git_commit_ranges' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_recent_commits' {
    run grep -c '__git_recent_commits' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_recent_branches' {
    run grep -c '__git_recent_branches' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_worktrees' {
    run grep -c '__git_worktrees' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_svn helper' {
    run grep -c '__git_svn' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_format_placeholders' {
    run grep -c '__git_format_placeholders' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_signoff_file' {
    run grep -c '__git_signoff_file' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_daemon_service' {
    run grep -c '__git_daemon_service' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_attributes' {
    run grep -c '__git_attributes' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_sendemail_confirm_values' {
    run grep -c '__git_sendemail_confirm_values' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone defines __git_sendemail_identities' {
    run grep -c '__git_sendemail_identities' "$osrc/_git-clone"
    assert $state equals 0
}

# ─── _git-clone concept references ─────────────────────────────────────────

@test '_git-clone references commit concept' {
    run grep -c 'commit' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone references branch concept' {
    run grep -c 'branch' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone references tag concept' {
    run grep -c 'tag' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone references remote concept' {
    run grep -c 'remote' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone references stash concept' {
    run grep -c 'stash' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone references HEAD concept' {
    run grep -c 'HEAD' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone references index concept' {
    run grep -c 'index' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone references worktree concept' {
    run grep -c 'worktree' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone references reflog concept' {
    run grep -c 'reflog' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone references merge concept' {
    run grep -c 'merge' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone references rebase concept' {
    run grep -c 'rebase' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone references cached concept' {
    run grep -c 'cached' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone references pathspec concept' {
    run grep -c 'pathspec' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone references upstream concept' {
    run grep -c 'upstream' "$osrc/_git-clone"
    assert $state equals 0
}

# ─── _git-clone file characteristics ───────────────────────────────────────

@test '_git-clone file is not empty' {
    run test -s "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone file is readable' {
    run test -r "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone starts with #compdef' {
    local first_line=$(head -1 "$osrc/_git-clone")
    assert "$first_line" contains '#compdef'
}

@test '_git-clone contains zstyle references' {
    run grep -c 'zstyle' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone contains compadd calls' {
    run grep -c 'compadd' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone contains _describe calls' {
    run grep -c '_describe' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone contains _alternative calls' {
    run grep -c '_alternative' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone contains _message calls' {
    run grep -c '_message' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone contains _values calls' {
    run grep -c '_values' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone contains _files calls' {
    run grep -c '_files' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone contains curcontext variable' {
    run grep -c 'curcontext' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone contains opt_args variable' {
    run grep -c 'opt_args' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone contains declare -A usage' {
    run grep -c 'declare -A' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone contains return ret pattern' {
    run grep -c 'return ret' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone contains $+functions guard' {
    run grep -c 'functions\[' "$osrc/_git-clone"
    assert $state equals 0
}

# ─── _git-clone common git options ─────────────────────────────────────────

@test '_git-clone has --bare option' {
    run grep -c '\-\-bare' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has --no-pager option' {
    run grep -c '\-\-no-pager' "$osrc/_git-clone"
    assert $state equals 0
}

@test '_git-clone has --git-dir option' {
    run grep -c '\-\-git-dir' "$osrc/_git-clone"
    assert $state equals 0
}

# ─── _cheat compdef and basics ──────────────────────────────────────────────

@test '_cheat compdef is cheat' {
    run grep -c '#compdef cheat' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat passes zsh syntax check' {
    run zsh -n "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses _arguments' {
    run grep -c '_arguments' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat has --help flag' {
    run grep -c '\-\-help' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat has --shell flag' {
    run grep -c '\-\-shell' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat has lang state' {
    run grep -c 'lang' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat caches language list' {
    run grep -c 'cache' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses compadd' {
    run grep -c 'compadd' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses curl for cheat.sh' {
    run grep -c 'curl' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat references cheat.sh' {
    run grep -c 'cheat.sh' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses XDG_CACHE_HOME' {
    run grep -c 'XDG_CACHE_HOME' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat declares local variables' {
    run grep -c 'local' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses array parameter expansion' {
    run grep -c '@f' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat is not empty' {
    run test -s "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat checks for curl command' {
    run grep -c 'commands\[curl\]' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses background cache write' {
    run grep -c '&!' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses find for cache expiry' {
    run grep -c 'find' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat file size is reasonable - over 10 lines' {
    local lc=$(wc -l < "$osrc/_cheat")
    assert "$lc" is_greater_than 10
}

@test '_cheat file size is reasonable - under 50 lines' {
    local lc=$(wc -l < "$osrc/_cheat")
    assert "$lc" is_less_than 50
}

@test '_cheat file is readable' {
    run test -r "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat starts with #compdef' {
    local first_line=$(head -1 "$osrc/_cheat")
    assert "$first_line" contains '#compdef'
}

@test '_cheat uses _message' {
    run grep -c '_message' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat has query message' {
    run grep -c 'query' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses _message for search query' {
    run grep -c 'search query' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses -s flag for _arguments' {
    run grep -c '_arguments -s' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses -C flag for _arguments' {
    run grep -c '_arguments -s -C' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses elif' {
    run grep -c 'elif' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses cheat_langs variable' {
    run grep -c 'cheat_langs' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses curl -s for silent mode' {
    run grep -c 'curl -s' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat references :list endpoint' {
    run grep -c ':list' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat has cheat sheet argument description' {
    run grep -c 'cheat sheet' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat has help description' {
    run grep -c 'show help' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat has shell description' {
    run grep -c 'shell mode' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat has cheat sheet label' {
    run grep -c 'cheat sheet' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses compadd -a for array' {
    run grep -c 'compadd -a' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses if conditional' {
    run grep -c 'if ' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses fi to close conditional' {
    run grep -c 'fi' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses mtime for cache expiry' {
    run grep -c 'mtime' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses file redirection for cache' {
    run grep -c 'cache_file' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat has help flag with bracket description' {
    run grep -c '\[show help' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat has shell flag with bracket description' {
    run grep -c '\[enter interactive shell' "$osrc/_cheat"
    assert $state equals 0
}

@test '_cheat uses exclusion pattern for help' {
    run grep -c '(- \*)' "$osrc/_cheat"
    assert $state equals 0
}
