#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Tue Feb 25 19:37:50 EST 2020
##### Purpose: zsh script to
##### Notes:
#}}}***********************************************************

@setup {
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
}

@test 'man src' {
    for f in "$pluginDir/man_src/"*; do
        run zsh -n "$f"
        assert $state equals 0
    done
}

@test 'src' {
    for f in "$pluginDir/src/"*; do
        run zsh -n "$f"
        assert $state equals 0
    done
}

@test 'override_src' {
    for f in "$pluginDir/override_src/"*; do
        run zsh -n "$f"
        assert $state equals 0
    done
}

@test 'plugin *.zsh' {
    for f in "$pluginDir/"*.zsh; do
        run zsh -n "$f"
        assert $state equals 0
    done
}
