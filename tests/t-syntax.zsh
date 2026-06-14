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
    unset -m "ZPWR_*" 2>/dev/null || true
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
}

@test 'man src' {
    local f
    for f in "$pluginDir/man_src/"*(.); do
        [[ ${f:e} == zwc ]] && continue
        run zsh -n "$f"
        assert $state equals 0
    done
}

@test 'src' {
    local f
    for f in "$pluginDir/src/"*(.); do
        [[ ${f:e} == zwc ]] && continue
        run zsh -n "$f"
        assert $state equals 0
    done
}

@test 'override_src' {
    local f
    for f in "$pluginDir/override_src/"*(.); do
        [[ ${f:e} == zwc ]] && continue
        run zsh -n "$f"
        assert $state equals 0
    done
}

@test 'more_src' {
    local f d
    for d in more_src more_src2 more_src3 more_src4 more_src5 more_src6; do
        for f in "$pluginDir/$d/"_*(.); do
            [[ ${f:e} == zwc ]] && continue
            run zsh -n "$f"
            assert $state equals 0
        done
    done
}

@test 'architecture_src' {
    local f
    for f in "$pluginDir/architecture_src/"*(.); do
        [[ ${f:e} == zwc ]] && continue
        run zsh -n "$f"
        assert $state equals 0
    done
}

@test 'plugin *.zsh' {
    local f
    for f in "$pluginDir/"*.zsh(.); do
        [[ ${f:e} == zwc ]] && continue
        run zsh -n "$f"
        assert $state equals 0
    done
}
