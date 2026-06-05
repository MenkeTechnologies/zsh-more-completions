#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Purpose: zsh-more-completions — fourth-tier contracts.
#####          Pins for plugin-entrypoint fpath wiring: override_src
#####          is prepended (so user-overrides win), other dirs are
#####          appended (so upstream zsh/zsh-completions wins when
#####          present), and the loop is idempotent under re-source.
#}}}***********************************************************

@setup {
    unset -m "ZPWR_*" 2>/dev/null || true
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    pluginFile="$pluginDir/zsh-more-completions.plugin.zsh"
}

@test 'override_src is PREPENDED (first), other dirs APPENDED (last)' {
    # Pin: the entrypoint uses two arrays:
    #   __zsh_more_comp_dirs_first=("$1/override_src")
    #   __zsh_more_comp_dirs_last=("$1/src" ... "$1/man_src" ...)
    # The first array is added with `fpath=($dir $fpath)` (prepend),
    # the last with `fpath=($fpath $dir)` (append). Swapping these
    # would break user-overrides AND let upstream completions win
    # over MenkeTech's curated set in the wrong direction.
    grep -qE '__zsh_more_comp_dirs_first=\("\$1/override_src"\)' "$pluginFile"
    local first=$?
    grep -qE '__zsh_more_comp_dirs_last=' "$pluginFile"
    local last=$?
    grep -qE 'fpath=\(\$__zsh_more_comp_dir \$fpath\)' "$pluginFile"
    local prepend=$?
    grep -qE 'fpath=\(\$fpath \$__zsh_more_comp_dir\)' "$pluginFile"
    local append=$?
    assert $(( first + last + prepend + append )) equals 0
}

@test 'all six trailing fpath dirs are wired: src, more_src, more_src2, more_src3, man_src, architecture_src' {
    # Pin: the trailing append-dirs are a curated set; dropping any one
    # leaks the matching corpus from fpath and silently breaks tab
    # completion for hundreds of commands. Verify each name appears.
    local count
    count=$(grep -oE '"\$1/(src|more_src|more_src2|more_src3|man_src|architecture_src)"' "$pluginFile" | sort -u | wc -l | tr -d ' ')
    assert "$count" same_as '6'
}

@test 'fpath append is GUARDED by reverse-search so re-source is idempotent' {
    # Pin: `if [[ -z ${fpath[(r)$dir]} ]]; then fpath+=$dir`. The (r)
    # subscript finds the first matching element; if it exists, we skip.
    # Removing the guard would grow fpath by 5 entries on every source,
    # bloating compinit scan and slowing shell startup. Pin both forms.
    local count
    count=$(grep -cE 'if \[\[ -z \$\{fpath\[\(r\)\$__zsh_more_comp_dir\]\} \]\]' "$pluginFile")
    # Two loops (first dirs + last dirs), each with the same guard.
    assert "$count" same_as '2'
}

@test 'entrypoint runs via anonymous-function invocation with ${0:h} passed as $1' {
    # Pin: the file body is wrapped in `(){ ... } ${0:h}`. The
    # anonymous fn keeps locals from leaking, and the ${0:h} arg
    # passes the plugin directory. Dropping ${0:h} would dereference
    # an empty $1 and silently skip every fpath append.
    grep -qE '} \$\{0:h\}$' "$pluginFile"
    assert $? equals 0
}

@test 'no globbing surprise: __zsh_more_comp_dir loop var iterates ARRAY not glob' {
    # Pin: the loop is `for __zsh_more_comp_dir in $__zsh_more_comp_dirs_first[@]`.
    # The `[@]` subscript expands as array elements. Dropping `[@]`
    # would feed scalar (joined) value, breaking the per-dir guard.
    local count
    count=$(grep -cE 'for __zsh_more_comp_dir in \$__zsh_more_comp_dirs_(first|last)\[@\]' "$pluginFile")
    assert "$count" same_as '2'
}
