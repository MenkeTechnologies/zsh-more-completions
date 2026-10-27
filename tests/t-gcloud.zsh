#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Validate the _gcloud static CLI tree loader against a fixture SDK
#}}}***********************************************************

@setup {
    unset -m "ZPWR_*" 2>/dev/null || true
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    tmp=${$(mktemp -d):A}
    mkdir -p $tmp/sdk/bin $tmp/sdk/data/cli
    print '#!/bin/sh' > $tmp/sdk/bin/gcloud
    chmod +x $tmp/sdk/bin/gcloud
    # Same shape as <sdk>/data/cli/gcloud_completions.py: a pylint comment
    # containing "=", integer choice lists, escaped strings, a quote.
    cp $pluginDir/tests/fixtures/gcloud_completions.py $tmp/sdk/data/cli/
    loader=$pluginDir/tests/fixtures/gcloud-load.zsh
}

@teardown {
    command rm -rf $tmp
}

@test '_gcloud tree loader maps groups to sorted subcommands' {
    code='print -r -- "${_gcloud_cmds[gcloud]}|${_gcloud_cmds[gcloud compute]}|${_gcloud_cmds[gcloud compute instances]}"'
    run zsh -f $loader $tmp/sdk $pluginDir '$code'
    assert $state equals 0
    assert "$output" same_as 'compute config|instances|create list'
}

@test '_gcloud tree loader keeps leaf commands out of the group table' {
    code='print -r -- ${+_gcloud_cmds[gcloud compute instances create]} ${#_gcloud_cmds}'
    run zsh -f $loader $tmp/sdk $pluginDir '$code'
    assert "$output" same_as '0 4'
}

@test '_gcloud tree loader records flag kinds and integer choices' {
    code='print -rl -- ${(f)_gcloud_flags[gcloud compute instances create]} | tr "\037\t" ", "'
    run zsh -f $loader $tmp/sdk $pluginDir '$code'
    assert "${lines[1]}" same_as '--cpu-count =1,2,4'
    assert "${lines[2]}" same_as '--machine-type value'
    assert "${lines[3]}" same_as '--zone dynamic'
}

@test '_gcloud tree loader decodes escapes and quotes in choices' {
    # "\\n" in the tree is the two characters backslash (92), n.
    code='_gcloud_flag_kind "gcloud config set" --delimiter; c=(${(ps:\x1f:)REPLY#=}); x=$c[1]; print -r -- $#c $#x $(( #x )) $x[2] "$c[2]"'
    run zsh -f $loader $tmp/sdk $pluginDir '$code'
    assert "$output" same_as "2 2 92 n it's"
}

@test '_gcloud flag lookup falls back to global flags' {
    code='_gcloud_flag_kind "gcloud compute instances list" --help; print -r -- $REPLY; _gcloud_flag_kind "gcloud compute instances list" --zone; print -r -- "[$REPLY]"'
    run zsh -f $loader $tmp/sdk $pluginDir '$code'
    assert "${lines[1]}" same_as 'bool'
    assert "${lines[2]}" same_as '[]'
}

@test '_gcloud tree cache is rebuilt when the SDK path changes' {
    code='c=$XDG_CACHE_HOME/zsh-more-completions/gcloud-tree.zsh; print -r -- "# source: elsewhere" > $c; unset _gcloud_tree_src _gcloud_cmds; _gcloud_tree_load; read -r h < $c; print -r -- "$h|${_gcloud_cmds[gcloud]}"'
    run zsh -f $loader $tmp/sdk $pluginDir '$code'
    assert "$output" same_as "# source: $tmp/sdk/data/cli/gcloud_completions.py|compute config"
}

@test '_gcloud tree loader fails cleanly without a static tree' {
    command rm $tmp/sdk/data/cli/gcloud_completions.py
    code=''
    run zsh -f $loader $tmp/sdk $pluginDir '$code'
    assert "$output" same_as 'LOAD-FAILED'
}
